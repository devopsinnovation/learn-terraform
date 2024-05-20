module "app" {
  for_each = var.components
  source = "./app"
  Name   = each.key
  ami    = var.ami
  vpc_security_group_ids = var.vpc_security_group_ids
  instance_type = each.value["instance_type"]
}

