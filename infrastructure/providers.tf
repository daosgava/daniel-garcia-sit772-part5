terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.71.0"
    }
  }

  required_version = ">= 1.5.6"

  backend "azurerm" {
    resource_group_name   = "deakinlibrary"
    storage_account_name  = "terraformstatedaosgava"
    container_name        = "tfstate"
    key                   = "terraform.tfstate"
  }
}

# This block is required to prevent provider registration errors
provider "azurerm" {
  features {
    resource_group {
      prevent_deletion_if_contains_resources = false
    }
  }
  skip_provider_registration = true
}