terraform {
  backend "azurerm" {
  # variables cannot be used, so hard-code
  resource_group_name  = "atulrg-ghapy"
  storage_account_name = "atulghapy"
  container_name       = "atulctr-ghapy"
  key       = "terraform.tfstate"
}
}
