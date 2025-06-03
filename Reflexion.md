
# Reflexion

## Was ist die Rolle des provider Blocks in deiner Konfiguration?  
Der Provider-Block sagt Terraform, mit welchem Tool oder Dienst es reden soll. Hier ist es Docker. Ohne das wüsste Terraform gar nicht, wie es die Sachen bauen soll.

## Warum ist er notwendig?  
Weil Terraform sonst keine Ahnung hat, wo es anklopfen soll, um Container oder Images zu machen. Der Provider ist wie der Ansprechpartner für Terraform.

## Was ist die Rolle des resource Blocks?  
Hier sag ich Terraform, was genau es bauen soll, z.B. einen Docker-Container oder ein Image.

## Was repräsentiert er im Vergleich zu einem provider?  
Der Provider ist die Verbindung zur Welt draußen (Docker), und die Resource sind die Sachen, die ich bauen will (Container, Images).

## Wie hast du in deiner Konfiguration eine implizite Abhängigkeit zwischen der docker_container Ressource und der docker_image Ressource erstellt?  
Ich hab beim Container gesagt, welches Image er benutzen soll. Dadurch weiß Terraform, dass es erst das Image machen muss, bevor es den Container baut.

## Warum ist es wichtig, dass Terraform diese Abhängigkeit versteht?  
Weil der Container sonst nicht starten kann, wenn das Image noch nicht da ist. Terraform muss wissen, was zuerst kommt.

## Was genau bewirkt der Befehl terraform init, wenn du ihn zum ersten Mal in einem Verzeichnis ausführst?  
Der Befehl lädt alle Sachen runter, die Terraform braucht, damit es mit Docker reden kann. Er macht das Verzeichnis bereit für alles Weitere.

## Was genau zeigt der Output von terraform plan an?  
Der Plan zeigt mir, was Terraform machen wird, ohne es wirklich zu tun. So kann ich schauen, ob alles passt.

## Welche Informationen liefert er, bevor du die Infrastruktur tatsächlich erstellst?  
Er sagt mir, was neu gebaut wird (z.B. ein Container), was sich ändert oder wegkommt. So kann ich Fehler vermeiden.
