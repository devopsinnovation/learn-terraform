resource "aws_instance" "frontendserver" {
  ami           = "ami-090252cbe067a9e58"
  instance_type = "t2.small"
  subnet_id = "subnet-042cbd7641215cdce"
  vpc_security_group_ids = ["sg-0706ec15d6ace75e5"]

  tags = {
    Name="frontendserver"
  }
}

resource "aws_instance" "backendserver" {
  ami           = "ami-090252cbe067a9e58"
  instance_type = "t2.small"
  subnet_id = "subnet-042cbd7641215cdce"
  vpc_security_group_ids =  ["sg-0706ec15d6ace75e5"]

  tags = {
    Name="backendserver"
  }
}
resource "aws_instance" "mysqlserver" {
  ami           = "ami-090252cbe067a9e58"
  instance_type = "t2.small"
  subnet_id = "subnet-042cbd7641215cdce"
  vpc_security_group_ids =  ["sg-0706ec15d6ace75e5"]

  tags = {
    Name="mysqlserver"
  }
}