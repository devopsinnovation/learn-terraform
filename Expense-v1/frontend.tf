resource "aws_instance" "frontendserver" {
  count =  length(var.component)
  ami           = "ami-090252cbe067a9e58"
  instance_type = "t2.small"
  subnet_id = "subnet-042cbd7641215cdce"
  vpc_security_group_ids = ["sg-0706ec15d6ace75e5"]

  tags = {
    Name= var.component[count.index]
  }
}

variable "component" {

  default = ["frontendserver", "backendserver", "mysqlserver"]
}