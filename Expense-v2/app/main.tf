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
  name    = "${var.Name}-dev.devopsinnovation.online"
  type    = "A"
  zone_id = var.zone_id
  ttl     = var.ttl
  records = [aws_instance.node.private_ip]
}

resource "null_resource" "provisionerexecute" {
  depends_on = [aws_route53_record.www]
  provisioner "local-exec" {
    command = "sleep 120; cd /home/ec2-user/ansible-expense-dry-code ; ansible-playbook -i ${aws_instance.node.private_ip}, -e ansible_user=ec2-user -e ansible_password=DevOps321 -e role_name=${var.Name} -e env=dev expense.yml"
  }
}