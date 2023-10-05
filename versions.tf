terraform {
  required_providers {
    archive = {
      source = "registry.terraform.io/hashicorp/archive"
    }
    external = {
      source = "registry.terraform.io/hashicorp/external"
    }
    null = {
      source = "registry.terraform.io/hashicorp/null"
    }
  }
  required_version = ">= 1.6.0"
}
