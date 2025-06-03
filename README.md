# Terraform Docker Projekt - Erste Schritte

## Was ist drin?  
Im Ordner `terraform/first-steps/` findest du meine Terraform-Konfigurationsdateien (`provider.tf` und `main.tf`).  
Diese bauen ein Docker-Image (`nginx:latest`) und starten daraus einen Container.

## Wie benutzen?  
1. Im Terminal in `terraform/first-steps/` gehen  
2. `terraform init` ausführen, um die Plugins zu laden  
3. `terraform plan` um zu sehen, was Terraform machen will  
4. `terraform apply` um die Container zu starten

## Besonderheiten  
- Docker muss auf deinem Rechner laufen  
- Ich habe den Docker-Provider benutzt, der lokal mit Docker spricht  
- Im Container muss der Port (z.B. 80) freigegeben (exposed) sein, damit man von außen drauf zugreifen kann  
- `.terraform/` und `terraform.tfstate` sind im `.gitignore` und nicht im Repo

## Screenshots  
In diesem Repo sind auch Screenshots von `terraform init` und `terraform plan` als Beweis, dass es funktioniert hat.
