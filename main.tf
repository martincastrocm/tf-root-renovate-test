module "common" {
  source = "git@github.com:martincastrocm/tf-module-renovate-test.git?ref=v0.1.0"
}

terraform {

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 4.24.0"
    }
  }
}