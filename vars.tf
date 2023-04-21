locals {
  hosts = [
    {
      hostname = "demo-ds.pycon.ernsthaagsman.com",
      pubkey = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQDO8bdfXIXchvzHShwZkMotZA4AA2gkorMDw39mLva3VWPIJNRxB+Xa3/jeb9VoI2hmF9cByTGWnSmqR+7FDn2qm7p6PDmpL+WQtZ+N9YYZyOzIhsLEh0G+6yapvvPhDQaEfKEbyMI8MYRjp1jYGdPmcU0No6vMOBHwnHgJzOgokGyQtIQG1JcuUS/+yiiuhb9yGPn+Ws8LYVrmZGdMS7IpYDuE76/OUeEUQdHCm4J2XGG3MgtgpMJRWtc+qRw8bp9/3zeeGC7bhZh2SbNViNGmGlSAfPpYBgMlchBOjc8cWbxbToazkeGUVaXdWM22Z/iA4vYUnPmLPI44+dCqgbglk99K9c6leMho5QIZk8DZ8TQlXWv/lVvEZq5P5TKgZFmVcpM+V6anJe6GO+uu77nR36radS9CHC6g0/3UCaE2iKMrGYGyUkMDB6r2JSxmas1WP3qwtTADuGq7tToAecvPImVtZqMpEHtLh0tIdLro4PxZQyC7C+X9MQ1lvgYpZFk= Roberto.Pesce@NVC00596",
    },
#    {
#      hostname = "demo-fs.pycon.ernsthaagsman.com",
#      pubkey = "",
#    },
#    {
#      hostname = "demo-wb.pycon.ernsthaagsman.com",
#      pubkey = "",
#    }
  ]
}

variable "gandi_key" {
  type = string
}