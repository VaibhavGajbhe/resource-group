
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