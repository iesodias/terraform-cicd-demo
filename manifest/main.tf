terraform {
  cloud {
    organization = "devops-actions"

    workspaces {
      name = "terraform-cicd-demo"
    }
  }
}

provider "azurerm" {
  features {}
}

# Create Resource Group 
resource "azurerm_resource_group" "my_demo_rg1" {
  location = var.location
  name     = var.name

  tags = {
    "environment"  = "k8sdev"
    "environment1" = "k8sde2v"
  }

}