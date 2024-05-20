resource "aws_instance" "ec2-nodes" {
  for_each = var.components
  ami           = "ami-090252cbe067a9e58"
  instance_type = each.value["instance_type"]
  subnet_id = "subnet-042cbd7641215cdce"
  vpc_security_group_ids = ["sg-0706ec15d6ace75e5"]

  tags = {
    Name= each.key
  }
}

variable "components" {
  default = {
    frontendserver ={
      instance_type = "t2.small"
    }
    backendserver ={
      instance_type = "t2.small"
    }
    mysqlserver ={
      instance_type = "t2.small"
    }
  }
}