# 2. Uitrol van applicaties voor klanten volgens DevOps-methodiek:
In deze opdracht moet je voor twee klanten producten uitrollen op een DevOpsmethode.
Het Dev-gedeelte van de applicatie is al verzorgd door de leverancier; jij
bent verantwoordelijk voor de geautomatiseerde uitrol en monitoring.

## • Klant 1: Wordpress voor trainingsdoeleinden
De eerste klant wil verschillende WordPress-websites afnemen voor
trainingsdoeleinden. De focus ligt op het zo goedkoop mogelijk aanbieden van
deze websites. Hierop is de klant aangeboden dat de applicaties in container
(LXC) wordt aangeboden.

### Opzet van de oplossing

De oplossing bestaat uit twee delen:

1. **Provisioning (Proxmox)**

   * Containers worden gekloond vanuit een template (30Gb disk / 1proc / 1Gb mem / netwerksnelheid is beperkt tot 50MB/s).
   * Netwerkconfiguratie (IP-adressen) wordt automatisch ingesteld
   * Containers worden gestart en voorbereid voor SSH toegang

2. **Configuratie (Ansible)**

   * Installatie van Apache, MariaDB en PHP
   * Automatisch downloaden en configureren van WordPress
   * Database en gebruiker worden aangemaakt

---

### Werkwijze

De uitrol wordt aangestuurd vanuit één Ansible playbook sinds `create_ct.yml` en `wp.yml` na mijn testfase uiteindelijk zijn samengevoegd:

* Containers worden gedefinieerd in `containers.yml`
* Het playbook [site.yml](klant1/site.yml):

  * maakt containers aan
  * configureert netwerk
  * voegt SSH keys toe
  * installeert WordPress
  * Voegt gemaakte containers toe aan een lijst voor monitoring. Helaas heeft de monitor node problemen inmiddels.

  


Door gebruik te maken van een loop over de containerlijst is de oplossing eenvoudig schaalbaar.

---

### Schaalbaarheid

De oplossing ondersteunt eenvoudig opschalen door extra containers toe te voegen:

[containers.yml](klant1/containers.yml)

```yaml
containers:
  - { id: 603, ip: 10.24.37.61 }
  - { id: 604, ip: 10.24.37.62 }
  - { id: 605, ip: 10.24.37.63 }
  - { id: 606, ip: 10.24.37.64 }
  - { id: 607, ip: 10.24.37.65 }
  - { id: 608, ip: 10.24.37.66 }
```

Na het uitvoeren van het playbook worden alle containers automatisch ingericht.

---

### Resultaat

* Meerdere WordPress instances draaien parallel
* Elke container heeft een eigen IP-adres
* De WordPress installatie is bereikbaar via de browser
* Volledige uitrol gebeurt zonder handmatige configuratie

---

### Bewijs van werking

De automatische uitrol is vastgelegd in een video:
![video uitrol](/opdracht1/deelopdracht2/klant1/videos/opdr1klant1.mp4)

Deze video toont:

* het starten van het playbook
* het aanmaken van meerdere containers
* de automatische installatie van WordPress

---

### Bestanden in repository

* `site.yml` – hoofd playbook
* `containers.yml` – lijst met containers
