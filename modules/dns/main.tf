data "aws_route53_zone" "main" {
  name         = var.domain_name
  private_zone = false
}

resource "aws_route53_record" "game_server" {
  zone_id = data.aws_route53_zone.main.zone_id
  name    = "${var.record_name}.${data.aws_route53_zone.main.name}"
  type    = "A"
  ttl     = 300
  records = [var.instance_public_ip]
}
