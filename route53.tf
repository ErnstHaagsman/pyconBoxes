resource "aws_route53_zone" "pyconehcom" {
  name = "pycon.ernsthaagsman.com"
}

resource "aws_route53_record" "host" {
  for_each = toset([for host in local.hosts: host.hostname])
  name    = each.key
  type    = "A"
  ttl = 30
  zone_id = aws_route53_zone.pyconehcom.id
  records = [
    aws_instance.ec2[each.key].public_ip
  ]
}