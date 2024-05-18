variable "x" {
  default = 10
}

output "x" {
  value = var.x
}

variable "1" {

  default = [
  10,
  "hello",
  true
  ]
}

output "1" {
  value = var.1
}

output "12" {
  value = var.1[1]
}