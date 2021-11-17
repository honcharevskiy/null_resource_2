terraform {

required_providers {
    null = {
      source = "hashicorp/null"
      version = "3.1.0"
    }
  }
}

resource "null_resource" "foo" {
    count = 5
}


variable "first_variable" {
  type = string
  default = "string1"
}



variable "second_variable" {
  type = string
  default = "string2"
}



output "first_variable" {
  value = var.first_variable
}


output "second_value" {
  value = var.second_variable
}
