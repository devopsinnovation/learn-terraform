variable "fruits" {}

output "apple" {
  value = "Apple Quantity - ${var.fruits["apple"]["quantity"]}, price is - ${var.fruits["apple"]["price"]}"
}

output "banana" {
  value = "banana Quantity - ${var.fruits["banana"]["quantity"]}, price is - ${var.fruits["apple"]["price"]}"
}