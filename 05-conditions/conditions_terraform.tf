#syntax: condtion ? true_value:falsevalue

variable "marks" {
  default = 50
}

output "Grade" {
  value = var.marks>45 ? "OKAY" : "NOT OKAY"
}