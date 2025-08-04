# Base image Python avec support de SDL
FROM python:3.12-slim

# Installations nécessaires pour pygame + affichage
RUN apt update && apt install -y \
    python3-dev \
    libsdl-image1.2-dev \
    libsdl-mixer1.2-dev \
    libsdl-ttf2.0-dev \
    libsdl1.2-dev \
    libsmpeg-dev \
    libsdl1.2debian \
    libportmidi-dev \
    libswscale-dev \
    libavformat-dev \
    libavcodec-dev \
    libx11-dev \
    x11-xserver-utils \
    && pip install pygame \
    && apt clean

# Créer un dossier de travail
WORKDIR /app

# Copier les fichiers du projet
COPY . /app

# Commande pour lancer le jeu
CMD ["python", "main.py"]

