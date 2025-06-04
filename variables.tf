variable "container_name" {
  default = "my-test-container"
}

variable "external_port" {
  default = 8888
}

variable "nginx_html_content" {
  default = "<h1>Test Umgebung</h1><p>Dieser Inhalt kommt aus der test.tfvars Datei.</p>"
}