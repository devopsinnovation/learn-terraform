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

variable "vpc_security_group_ids" {
  default = ["sg-0706ec15d6ace75e5"]
}
variable "zone_id" {
  default =  "Z1015094164SK9DW3BYUT"

}
variable "ttl" {
  default = 5
}