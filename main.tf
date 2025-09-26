module "common" {
  source = "git@github.com:martincastrocm/tf-module-renovate-test.git?ref=v0.1.0"
}

module "avm_utl_regions" {
  source  = "Azure/avm-utl-regions/azurerm"
  version = "0.5.0"
}

terraform {
  required_version = "~> 1.12.0"

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 4.24.0"
    }
    azapi = {
      source  = "Azure/azapi"
      version = "~> 2.5.0"
    }
  }
}