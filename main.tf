terraform {
  required_providers {
    scalr = {
      source = "private-registry-18285.herokuapp.com/scalr/scalr"
      version = "1.0.0"
    }
  }
}

# provider scalr {
 # hostname = var.hostname
  #token    = var.api_token
#}

resource null_resource "monorepo" {
}
