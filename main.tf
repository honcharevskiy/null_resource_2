terraform {
  required_providers {
    null = {
      source = "hashicorp/null"
      version = "3.1.0"
    }
  }


  backend "remote" {
    hostname = "c70d784fa5c8.test-env.scalr.com"
    organization = "env-svrcnchebt61e30"

    workspaces {
      name = "new_cli"
    }
  }
}

resource "null_resource" "foo" {
    count = 5000
}

