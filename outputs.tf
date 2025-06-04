output "container_name_output" {
  description = "Name des erstellten Containers"
  value       = docker_container.simple_nginx.name
}

output "container_external_port" {
  description = "Externer Port des Containers"
  value       = docker_container.simple_nginx.ports[0].external
}

output "html_content_used" {
  description = "HTML-Inhalt, der verwendet wurde"
  value       = var.nginx_html_content
}
