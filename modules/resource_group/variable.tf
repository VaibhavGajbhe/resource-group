variable "rg-var" {
  description = "Resource group details"
  type = map(object({
    name     = string
    location = string
   
  }))
  
  
}