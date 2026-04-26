#!/bin/bash

echo "=== Maak netwerk ==="
docker network create mynetwork

echo "=== Toon netwerken ==="
docker network ls

echo "=== Start container 1 ==="
docker run -d --name c1 --network mynetwork nginx

echo "=== Start container 2 ==="
docker run -d --name c2 nginx

echo "=== Verbind c2 met netwerk ==="
docker network connect mynetwork c2

echo "=== Check containers ==="
docker ps

echo "=== Disconnect c2 ==="
docker network disconnect mynetwork c2

echo "=== Stop and remove containers ==="
docker rm -f c1 c2

echo "=== Remove netwerk ==="
docker network rm mynetwork

echo "=== Prune (cleanup) ==="
docker network prune -f