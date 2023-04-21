data "gandi_livedns_domain" "ehcom" {
  name = "ernsthaagsman.com"
}

resource "gandi_livedns_record" "pyconehcom" {
  name = "pycon"
  ttl  = 3600
  type = "NS"
  zone = data.gandi_livedns_domain.ehcom.name
  values = [for ns in aws_route53_zone.pyconehcom.name_servers: format("%s.", ns)]
}
