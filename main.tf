resource "docker_container" "simple_nginx" {
  name  = var.container_name
  image = "nginx:latest"

  ports {
    internal = 80
    external = var.external_port
  }

  # Container beim Starten den Befehl überschreiben, der zuerst index.html schreibt und dann nginx startet
  command = [
    "sh",
    "-c",
    <<-EOT
      echo '${var.nginx_html_content}' > /usr/share/nginx/html/index.html && nginx -g 'daemon off;'
    EOT
  ]
}