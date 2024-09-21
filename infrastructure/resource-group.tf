resource "azurerm_resource_group" "deakin_library" {
  name     = var.app_name
  location = var.location
}