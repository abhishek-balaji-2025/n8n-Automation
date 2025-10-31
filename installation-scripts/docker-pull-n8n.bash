#!/bin/bash

# 1. Pull the official n8n image
docker pull n8nio/n8n

# 2. Now run it (clean start)
docker run -d \
  --name n8n \
  -p 5678:5678 \
  -v ~/.n8n:/home/node/.n8n \
  --restart unless-stopped \
  n8nio/n8n

