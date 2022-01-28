
terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "2.93.0"
    }
  }
}

provider "azurerm" {
 /* subscription_id = "6912d7a0-bc28-459a-9407-33bbba641c07"
  client_id       = "ed5d6ac4-de15-4a24-b5d3-61812c9e9941"
  client_secret   = "HOl7Q~23UVXp4J1SlBTsQQSR~dMk2CTsNERWH"
  tenant_id       = "70c0f6d9-7f3b-4425-a6b6-09b47643ec58"*/
   subscription_id =var.subscriptionID
  client_id       = var.clientID
  client_secret   = var.clientSecret
  tenant_id       = var.tenantID


  features {}
}
resource "azurerm_resource_group" "app_grp"{
  name="app-grpddd" 
  location="North Europe"
}