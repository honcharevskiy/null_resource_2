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


output "sensitive_value" {
  value = var.test_sensitive
}
