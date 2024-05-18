variable "x" {
  default = 10
}

output "x" {
  value = var.x
}

variable "l" {

  default = [
  10,
  "hello",
  true
  ]
}

output "l" {
  value = var.1
}

output "l2" {
  value = var.1[1]
}