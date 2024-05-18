resource "aws_instance" "frontendserver" {
  ami           = "ami-090252cbe067a9e58"
  instance_type = "t2.small"
  subnet_id = "subnet-042cbd7641215cdce"

  tags = {
    Name="frontendserver"
  }
}
