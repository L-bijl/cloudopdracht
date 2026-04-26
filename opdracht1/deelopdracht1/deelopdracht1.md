# 1. Proxmox cluster opzetten en monitoren:
Je bent verantwoordelijk voor het opzetten van het Proxmox cluster en het
implementeren van monitoring-tools om de status van het cluster en de applicaties te
bewaken.

## Proxmox Configuratie

- 47926804 (479268-LXC) Gebruikt als controlnode om via ansible de 3 VM's aan te sturen.
- 47926805 (479268-LXC) Gebruikt als monitoring node voor prometheus + grafana. [Monitornode opzetten](monitornode.md)

- 479268 (479268-vm1)
- 479268 (479268-vm2)
- 479268 (479268-vm3)
![Overzicht](screenshots/Picture1.png)