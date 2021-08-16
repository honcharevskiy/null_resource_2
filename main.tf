terraform {
  required_providers {
    scalr = {
      source  = "terraform-provider.herokuapp.com/scalr/scalr"
      version = "2.1.0"
    }
    acme = {
      source  = "vancluever/acme"
      version = "2.5.3"
    }
    ansible = {
      source  = "nbering/ansible"
      version = "1.0.4"
    }

  }
}


