variable "server_name" {
  type = string
  default = "example.com"
}

variable "server_port" {
  type = number
  default = 8008
}

variable "app_name" {
  type = string
  default = "my-web-app"
}

variable "content" {
  type = string
  default = "TEST!TEST!TEST!"
}
