terraform {
  required_providers {
    local = {
      source = "hashicorp/local"
      version = "~> 2.9"
    }
  }
}

locals {
  rendered_config = templatefile("${path.module}/templates/nginx.conf.tftpl", {
    server_port = var.server_port
    server_name = var.server_name
    app_name    = var.app_name
    content     = var.content
  }) 
}

resource "local_file" "test" {
  content = local.rendered_config
  filename = "${path.module}/nginx.conf"
}
