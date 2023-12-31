terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=3.0.0"
    }
  }

  # to keep tfstates in terraform cloud
  backend "remote" {
    organization = "hnurydec17"
    workspaces {
      name = "Terraform-Test-2"
    }
  }


  #   backend "azurerm" {
  #     resource_group_name  = "terraform-state"
  #     storage_account_name = "terraformstatehnur"
  #     container_name       = "tfstate"
  #     key                  = "terraform-dev.tfstate"
  #     # key                  = "terraform-e.tfstate"
  #   }

}
provider "azurerm" {
  features {}
}