
# variable "acr-var" {
#     description = "A list of georeplication configurations for the Azure Container Registry."
#     type = list(object({
#         name                    = string
#         resource_group_name     = string
#         location                = string
#         zone_redundancy_enabled = bool
#         tags                    = map(string)
#     }))
#     default = [
#         {
#             location                = "East US"
#             zone_redundancy_enabled = true
#             tags                    = {}
#         }
#     ]
# }
# resource "azurerm_container_registry" "acr-block" {
#     for_each            = var.acr-var
#     name                = "${each.value.name}-dev"
#     resource_group_name = "dev-rg-grabzilla"
#     location            = each.value.location
#     sku                 = "Basic"
#     # admin_user_enabled   = true
#     admin_enabled       = false

#     dynamic "georeplications" {
#         for_each = [each.value]
#         content {
#             location                = georeplications.value.location
#             zone_redundancy_enabled = georeplications.value.zone_redundancy_enabled
#             tags                    = georeplications.value.tags
#         }
#     }
# }
