resource "aws_instance" "node" {
  ami           = var.ami
  instance_type = var.instance_type
  subnet_id = "subnet-042cbd7641215cdce"
  vpc_security_group_ids = var.vpc_security_group_ids

  tags = {
    Name= var.Name
  }
}