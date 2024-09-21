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
  tenant_id       = file("./ids/tenant_id")
  subscription_id = file("./ids/subscription_id")
  use_msi = false
}



