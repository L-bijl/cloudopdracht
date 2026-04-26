# Deelopdracht 1

## Opdrachten: Tutorial simplilearn https://www.simplilearn.com/tutorials/docker-tutorial
## Lesson 4 - Installeer op een Proxmox node een Ubunbtu host (bijvoorkeur VM) met daarop Docker.Registreer van alle lessons de uitkomsten met een screen recording/screenshots en leg het vast in je repository.

### Poging gedaan om op elke node (PVE01 .101, PVE02 .102, PVE03 .103) een ubuntu VM aan te maken. Deze lopen continu vast bij de setup. Lag waarschijnlijk aan de toegewezen 1gb ram i.p.v. 6 Wel weer een uur verder.
![ubuntusetup](screenshots/Picture1.png)

### Benodigde packages geïnstalleerd voor Docker (ca-certificates en curl):
![packages installeren](screenshots/Picture2.png)

### Docker GPG key toegevoegd en rechten ingesteld:
![docker gpg key](screenshots/Picture3.png)

### Docker repository toegevoegd aan APT sources:
![docker repo toevoegen](screenshots/Picture4.png)

### APT package lijst geüpdatet na toevoegen van Docker repository:
![apt update](screenshots/Picture5.png)

### Docker service gecontroleerd, draait succesvol op de VM:
![docker status](screenshots/Picture6.png)

### Docker versie gecontroleerd om installatie te verifiëren:
![docker version](screenshots/Picture7.png)

### Docker installatie getest met hello-world container, succesvol uitgevoerd:
![hello world](screenshots/Picture8.png)

### Overzicht van beschikbare Docker images gecontroleerd:
![docker images](screenshots/Picture9.png)

### Overzicht van alle containers weergegeven, inclusief gestopte containers:
![docker ps -a](screenshots/Picture10.png)

## Lesson 7 - Build Image with DockerFile and create new Container op elk docker instantie op het Proxmox cluster.

### Directory aangemaakt en Dockerfile voorbereid voor het bouwen van een image:
![dockerfile aanmaken](screenshots/Picture11.png)

### Dockerfile aangemaakt met basisconfiguratie voor een custom image:
![dockerfile inhoud](screenshots/Picture12.png)

### Docker image gebouwd op basis van de Dockerfile:
![docker build](screenshots/Picture13.png)

### Container gestart vanuit zelfgemaakte Docker image en output gecontroleerd:
![docker run image](screenshots/Picture14.png)

## Lesson 8 - Docker Compose install op alle 3 Docker installaties op het Proxmox cluster.

### Docker Compose installatie gecontroleerd door versie op te vragen:
![docker compose version](screenshots/Picture15.png)

### Docker Compose configuratie aangemaakt met meerdere services (app en database):
![docker compose config](screenshots/Picture16.png)

### Docker Compose stack gestart met meerdere services (app en database):
![docker compose up](screenshots/Picture17.png)

### Actieve containers gecontroleerd om te bevestigen dat de services draaien:
![docker ps](screenshots/Picture18.png)

### Logs van de database container bekeken om te controleren of MySQL correct is opgestart:
![mysql logs](screenshots/Picture19.png)

## Lesson 9 - Voer, vanaf stap 6, geautomatiseerd de stappen uit op alle Docker omgevingen op het Proxmox cluster. Met als resultaat 3 swarms met 3 manager(op elke procmode node 1)

### Ansible playbook aangemaakt voor het automatiseren van Docker Swarm configuratie:
![ansible swarm playbook](screenshots/Picture20.png)

### Ansible playbook uitgevoerd om Docker Swarm automatisch te configureren op alle nodes:
![ansible swarm uitvoeren](screenshots/Picture21.png)

### Overzicht van Docker Swarm nodes gecontroleerd, alle nodes succesvol toegevoegd:
![docker node ls](screenshots/Picture22.png)

### Docker Swarm status gecontroleerd, swarm is actief:
![docker swarm status](screenshots/Picture23.png)

## Lesson 10 - "Basic Docker Neworking Command" Zet de commando's in een script en laat het script de commando's een voor een uitvoeren.

### Shell script aangemaakt met basis Docker networking commando’s:
![docker network script](screenshots/Picture24.png)

### Docker networking script uitgevoerd om netwerk en containers automatisch te beheren:
![network script uitvoeren](screenshots/Picture25.png)