terraform {

required_providers {
    null = {
      source = "hashicorp/null"
      version = "3.1.0"
    }
  }
}


variable "organization_name" {
  type = string
}


variable "workspace_name" {
  type = string
}


#data "terraform_remote_state" "network" {
#  backend = "remote"
#
#  config = {
#    organization = var.organization_name
#    workspaces = {
#          name = var.workspace_name
#    }
#  }
#}


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



#output "other_variable" {
 # value = data.terraform_remote_state.network.outputs.first_variable
#}


output "second_value" {
  value = var.second_variable
}
