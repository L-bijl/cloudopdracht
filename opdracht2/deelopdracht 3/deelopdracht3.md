# Deelopdracht 3

## Opdrachten: Load Balancing en Reverse Proxy
1. (2pt) Maak kennis met een product dat bovenstaande verzorgt https://doc.traefik.io/traefik/getting-started/quick-start/
Maak screenshots van de uitkomsten van bovenstaande en leg uit wat een Reverse proxy doet.

Een reverse proxy ontvangt inkomend verkeer en stuurt dit door naar de juiste backend service. De client communiceert dus niet direct met de backend, maar via de proxy.

### Directory aangemaakt:
![Directory aanmaken](screenshots/Picture1.png)

### Docker Compose bestand gemaakt:
![docker-compose](screenshots/Picture14.png)

### Traefik dashboard zichtbaar in browser:
![dashboard](screenshots/Picture3.png)

### Whoami service toegevoegd:
![whoami](screenshots/Picture4.png)

### Whoami service gestart via Docker Compose:
![whoami starten](screenshots/Picture5.png)

### Whoami service getest via curl, response succesvol ontvangen:
![whoami curl test](screenshots/Picture6.png)

### Traefik dashboard bekeken, routes en services zichtbaar:
![traefik dashboard](screenshots/Picture7.png)

2. Kies een tutorial waarin men in Docker een load balancer/proxy toepast. Met behulp van Nginx. Volg de tutorial en leg per stap je handeling vast in je eigen repository. Voeg een Markdown file toe waarin je een verwijzing maakt naar de gevolgde tutorial. Maak een korte screen recording van de uitkomsten (werking van reverse proxy en scaling/load balancing).

Gekozen tutorial: https://rickt.io/posts/09-load-balancing-a-fastapi-app-with-nginx-and-docker/

### Docker Compose bestand voor Nginx load balancer aangemaakt:
![nginx docker-compose](screenshots/Picture8.png)

### Nginx configuratiebestand aangemaakt voor load balancing:
![nginx config](screenshots/Picture9.png)

### Docker Compose stack gestart voor Nginx load balancer:
![nginx start](screenshots/Picture10.png)

### Nginx reverse proxy getest, request succesvol doorgestuurd naar container:
![nginx test](screenshots/Picture11.png)


### Applicatie geschaald naar meerdere containers met Docker Compose:
![scale app](screenshots/Picture12.png)

### Load balancing getest, requests worden verdeeld over meerdere containers:
![load balancing test](screenshots/Picture13.png)

### screenrecording van load balancing in werking.
[Bekijk screen recording](videos/loadbalancing.mp4)