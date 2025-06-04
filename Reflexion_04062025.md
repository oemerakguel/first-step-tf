# Reflexion zur Terraform-Docker Hausaufgabe

## was hat der befehl terraform apply getan, als du ihn zum ersten mal mit deiner initialen konfiguration (ohne variablen) ausgeführt hast?

als ich terraform apply zum ersten mal ausgeführt habe hat terraform die konfiguration gelesen und die angegebenen ressourcen erstellt also den nginx container gestartet es hat das image heruntergeladen und den container mit den standard settings aufgesetzt ich hatte noch keine variablen verwendet deswegen war alles fest im code drin

## was ist mit dem terraform state (terraform.tfstate) passiert, nachdem du terraform apply und terraform destroy ausgeführt hast?

nach terraform apply wurde eine datei namens terraform.tfstate erzeugt diese datei enthält den aktuellen status meiner ressourcen also was gerade existiert nach terraform destroy wurden die ressourcen gelöscht und im terraform state steht dann dass keine ressourcen mehr vorhanden sind die datei hilft terraform zu wissen was schon erstellt wurde und was gelöscht ist

## wie haben die variablen (variable {}, var.) deine konfiguration flexibler und wiederverwendbarer gemacht, verglichen mit der initialen konfiguration (ohne variablen)?

mit variablen konnte ich dinge wie container name port und html inhalt einfach ändern ohne den code direkt anzufassen ich konnte unterschiedliche werte testen indem ich nur die variable datei geändert habe so wurde die konfiguration flexibler und man kann sie einfacher für verschiedene umgebungen nutzen

## auf welche drei arten hast du werte an deine input variablen übergeben? beschreibe kurz die methode und ihre priorität.

1. über eine .tfvars datei (z.b. test.tfvars) hier stehen die variablenwerte drin und terraform liest sie beim apply ein  
2. über die commandline mit -var-file= oder -var= das überschreibt werte aus anderen quellen  
3. direkt im code in der variable definition kann man default werte angeben diese werden genutzt wenn keine anderen werte gesetzt sind

die priorität ist: commandline > tfvars datei > default wert in der variable

## was zeigen die outputs (output {}, terraform output) an, nachdem du apply ausgeführt hast? wofür sind sie nützlich?

outputs zeigen wichtige informationen über die erstellten ressourcen an wie z.b. der name des containers oder der port auf dem der container läuft sie sind nützlich um schnell daten zu bekommen die man z.b. für andere tools oder zur dokumentation braucht

## wie hast du den inhalt der variable nginx_html_content in die index.html datei im laufenden docker container bekommen? welche terraform-funktion (provisioner) wurde dafür genutzt? (hinweis: dies ist nur eine von mehreren möglichen methoden).

ich habe den provisioner local-exec genutzt der erlaubt lokale befehle auszuführen ich habe powershell befehle verwendet um eine index.html datei lokal zu erstellen mit dem inhalt aus der variable und dann mit docker cp in den laufenden container kopiert so konnte ich den inhalt aktualisieren ohne den container neu bauen zu müssen
