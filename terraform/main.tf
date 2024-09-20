terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=3.116.0"
    }
  }

  backend "local" {
    path = "./environments/dev_infra.terraform.tfstate"
  }
}

provider "azurerm" {
  features {}
  use_msi = false
}



