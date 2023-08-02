variable "region" {
  type    = string
  default = "us-west-2"
}

variable "az-list" {
  type = list(string)
  default = [ "us-west-2a", "us-west-2b", "us-west-2c" ]
  
  validation {
    condition = length(var.az-list) == 3
    error_message = "You must specify 3 AZs"
  }
}