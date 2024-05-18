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
  value = var.l
}

output "l2" {
  value = var.l[1]
}

variable "m" {
  default = {
    course= "Devops"
    trainer = "John"
  }

}
output "course_name" {
  value = var.m["course"]

}
output "y" {
  value = var.y
}