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
    azuredevops = {
      source = "microsoft/azuredevops"
      version = "0.1.6"
    }
    archive = {
      source = "safanaj/archive"
      version = "2.0.1"
    }
    aws = {
      source = "maddijoyce/aws"
      version = "3.15.1"
    }

  }
}


