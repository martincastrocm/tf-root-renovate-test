module "common" {
  source = "git@github.com:martincastrocm/tf-module-renovate-test.git?ref=v0.1.0"
}

module "commo2" {
  source = "git@github.com:martincastrocm/tf-module-renovate-test-2.git?ref=v0.1.0"
}


module "avm_utl_regions" {
  source  = "Azure/avm-utl-regions/azurerm"
  version = "0.5.0"
}

terraform {
  required_version = "~> 1.12"

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 4.26"
    }
    azapi = {
      source  = "Azure/azapi"
      version = "~> 2.5"
    }
    azuread = {
      source  = "hashicorp/azuread"
      version = "~> 3.3"
    }
    random = {
      source  = "hashicorp/random"
      version = "~> 3.6"
    }

  }
}

/*
terraform {

  required_providers {
    random = {
      source  = "hashicorp/random"
      version = "3.7.2"
    }
  }
}
*/