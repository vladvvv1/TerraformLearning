output "container_id" {
  value = docker_container.nginx.id
}

output "container_external_port" {
  value = var.external_port
}

output "container_internal_port" {
  value = var.internal_port
}