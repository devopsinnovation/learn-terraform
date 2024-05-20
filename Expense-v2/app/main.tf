resource "aws_instance" "node" {
  ami           = var.ami
  instance_type = var.instance_type
  subnet_id = "subnet-042cbd7641215cdce"
  vpc_security_group_ids = var.vpc_security_group_ids

  tags = {
    Name= var.Name
  }
}
resource "aws_route53_record" "www" {
  name    = "${var.Name}-dev-devopsinnovation.online"
  type    = "A"
  zone_id = var.zone_id
  ttl     = var.ttl
  records = [aws_instance.node.private_ip]
}