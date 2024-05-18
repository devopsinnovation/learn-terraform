resource "aws_instance" "frontend" {
  ami           = "ami-090252cbe067a9e58"
  instance_type = "t2.small"

  tags = {
    name="frontendserver"
  }
}

resource "aws_iam_role" "workstation-role" {
  assume_role_policy = "workstation-role"
}