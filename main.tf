terraform {
  required_providers {
    null = {
      source = "hashicorp/null"
      version = "3.1.0"
    }
  }
}

resource "null_resource" "foo" {

}

variable "first_variable" {
}

locals {
    first_variable = var.first_variable
   
}

output "foo" {
   value = var.first_variable
}
