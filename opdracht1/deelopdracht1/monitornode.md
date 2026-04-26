## Opzetten van monitornode (Prometheus + Grafana)

### Systeem geüpdatet en voorbereid op installatie van monitoring tools:
![apt update](screenshots/Picture1.png)

### Prometheus webinterface bereikbaar gemaakt en succesvol geopend in de browser:
![prometheus webinterface](screenshots/Picture2.png)

### Prometheus configuratie aangepast om een externe node exporter toe te voegen als target:
![prometheus config](screenshots/Picture3.png)

### Prometheus targets gecontroleerd en bevestigd dat zowel de node exporter als Prometheus zelf succesvol data verzamelen (status UP):
![prometheus targets](screenshots/Picture4.png)

### Grafana service gestart en gecontroleerd dat deze actief draait op de monitornode:
![grafana service](screenshots/Picture5.png)

### Grafana succesvol gekoppeld aan Prometheus en verbinding getest via de API:
![grafana prometheus koppeling](screenshots/Picture6.png)

### Grafana dashboard geïmporteerd en succesvol metrics (CPU, geheugen, netwerk en disk) van de node weergegeven:
![grafana dashboard](screenshots/Picture7.png)
