data "aws_route53_zone" "main" {
  name = "devopsinnovation.online"
}

output "route53_records" {
  value = data.aws_route53_zone.main
}