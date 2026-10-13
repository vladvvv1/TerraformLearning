variable "container_name" {
  type    = string
  default = "tutorial"
}

variable "external_port" {
  type    = number
  default = 8080
}

variable "internal_port" {
  type    = number
  default = 80
}
