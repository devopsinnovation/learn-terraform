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

variable "ami" {
  default = "ami-090252cbe067a9e58"
}

variable "vpc_security_group_ids" {
  default = ["sg-0706ec15d6ace75e5"]
}
