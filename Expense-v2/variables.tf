variable "components" {
  default = {
    frontend ={
      instance_type = "t2.small"
    }
    backend ={
      instance_type = "t2.small"
    }
    mysql ={
      instance_type = "t2.small"
    }
  }
}

variable "ami" {
  default = "ami-090252cbe067a9e58"
}

variable "ttl" {
  default = 5
}

variable "vpc_security_group_ids" {
  default = data.aws_security_group.allowall.id
}