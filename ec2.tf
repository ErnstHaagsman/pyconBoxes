resource "aws_key_pair" "key" {
  for_each = {for host in local.hosts: host.hostname => host.pubkey}
  key_name = each.key
  public_key = each.value
}

data "aws_ami" "ubuntu" {
    most_recent = true

    filter {
        name   = "name"
        values = ["ubuntu/images/hvm-ssd/ubuntu-jammy-22.04-amd64-server-*"]
    }

    filter {
        name   = "virtualization-type"
        values = ["hvm"]
    }

    owners = ["099720109477"] # Canonical
}


resource "aws_instance" "ec2" {
  for_each = toset([for host in local.hosts: host.hostname])
  instance_type = "t3a.xlarge"
  ami = data.aws_ami.ubuntu.id
  vpc_security_group_ids = [aws_security_group.ssh_for_all.id]
  key_name = each.key
  associate_public_ip_address = true
}

resource "aws_security_group" "ssh_for_all" {
  name = "inboundssh"

  ingress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port = 22
    to_port = 22
    protocol = "tcp"
  }

  egress {
    from_port = 0
    to_port = 0
    protocol = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}