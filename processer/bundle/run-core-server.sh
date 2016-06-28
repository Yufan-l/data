#!/bin/bash
docker load < core-server.tar
curl -i -H 'Content-Type: application/json' -d @core-server.json localhost:8080/v2/apps
