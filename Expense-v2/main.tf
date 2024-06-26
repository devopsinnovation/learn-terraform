module "app" {
  for_each = var.components
  source = "./app"
  Name   = each.key
  ami    = var.ami
  vpc_security_group_ids = [data.aws_security_group.allowall.id]
  instance_type = each.value["instance_type"]
  ttl = var.ttl
  zone_id = data.aws_route53_zone.main.id
}

