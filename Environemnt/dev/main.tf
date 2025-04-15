variable "rg-detail" {}

module "rg-module" {
  source = "../../modules/resource_group"
  rg-var = var.rg-detail
  
}




