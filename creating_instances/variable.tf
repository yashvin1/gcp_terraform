variable "project" {
    type = string  
}

variable "region" {
  type = list
}

variable "zones" {
  type=list
  default=["a","b","c"]
}