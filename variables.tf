variable "access_account_name" {
  type        = string
  description = "aviatrix controller access account name"
  default = "avxAzure44"
}


variable "directory_id" {
  type        = string
  default = ""
}


variable "subscription_id" {
  type        = string
  default = ""
}



variable "application_id" {
  type        = string
  default = ""
}


variable "application_key" {
  type        = string
  default = ""
}


variable "enableinit" {
  type        = string
  default = "true"
}

variable "enablecop" {
  type        = string
  default = "false"
}

variable "account_email" {
  type        = string
  description = "aviatrix controller access account email"
  default = "apatel@aviatrix.com"
}

variable "app_name" {
  type        = string
  description = "Azure AD App Name for Aviatrix Controller Build Up"
  default     = "AzureSP-44"
}

variable "aviatrix_customer_id" {
  type        = string
  description = "aviatrix customer license id"
  default = "aviatrix.com-abu-1705ef96-1688314910.007643"
}

variable "avx_controller_admin_email" {
  type        = string
  description = "aviatrix controller admin email address"
  default = "apatel@aviatrix.com"
}

variable "avx_controller_admin_password" {
  type        = string
  description = "aviatrix controller admin password"
  default = "Aviatrix123#"
}

variable "controller_name" {
  type        = string
  description = "Customized Name for Aviatrix Controller"
  default = "AzController44"
}
variable "controller_subnet_cidr" {
  type        = string
  description = "CIDR for controller subnet."
  default     = "10.44.0.0/28"
}

variable "controller_version" {
  type        = string
  description = "Aviatrix Controller version"
  default     = "latest"
}

variable "controller_virtual_machine_admin_username" {
  type        = string
  description = "Admin Username for the controller virtual machine."
  default     = "aviatrix"
}

variable "controller_virtual_machine_admin_password" {
  type        = string
  description = "Admin Password for the controller virtual machine."
  default     = "aviatrix123#"
}

variable "controller_virtual_machine_size" {
  type        = string
  description = "Virtual Machine size for the controller."
  default     = "Standard_A4_v2"
}

variable "controller_vnet_cidr" {
  type        = string
  description = "CIDR for controller VNET."
  default     = "10.44.0.0/24"
}

variable "create_custom_role" {
  type        = bool
  description = "Enable creation of custom role in stead of using contributor permissions"
  default     = false
}

variable "incoming_ssl_cidr" {
  type        = list(string)
  description = "Incoming cidr for security group used by controller"
  default = ["0.0.0.0/0"]
}

variable "location" {
  type        = string
  description = "Resource Group Location for Aviatrix Controller"
  default     = "West Europe"
}



# Copilot
variable "copilot_name" {
  type = string
  default = "testcopilot"
}

variable "use_existing_vnet" {
  type = string
  default = "true"
}

variable "add_ssh_key" {
  type = string
  default = "false"
}

variable "virtual_machine_size" {
  type        = string
  description = ""
  default     = "Standard_A4_v2"
}

variable "virtual_machine_admin_username" {
  type        = string
  description = ""
  default     = "copadmin"
}

variable "virtual_machine_admin_password" {
  type        = string
  description = ""
  default     = "Aviatrix123#"
}

variable "default_data_disk_size" {
  type = string
  default = "30"
}





  
  
  

