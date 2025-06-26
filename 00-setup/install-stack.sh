#!/bin/bash

echo "📦 Installation du stack Node + Yarn + Docker..."

# Node + Yarn
curl -fsSL https://deb.nodesource.com/setup_20.x | sudo -E bash -
sudo apt install -y nodejs
npm install --global yarn

# Docker
sudo apt update
sudo apt install -y docker.io docker-compose
sudo usermod -aG docker $USER

# VSCode (si besoin)
sudo snap install code --classic

# PostgreSQL (via Docker)
docker pull postgres
docker volume create pgdata

echo "✅ Stack installé ! Redémarre ton terminal"
