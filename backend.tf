terraform {
  backend "azurerm" {
  # variables cannot be used, so hard-code
  resource_group_name  = "atulrg-azctrlnoninit"
  storage_account_name = "atulazctrlnoninit"
  container_name       = "atulctr-azctrlnoninit"
  key       = "terraform.tfstate"
}
}
