FROM n8nio/n8n:latest
# 1. Partir de l'image officielle de n8n

# 2. Passer temporairement en utilisateur "root" pour avoir les permissions d'installer des logiciels
USER root

# 3. Mettre à jour les paquets et installer FFmpeg. 
#    '--no-cache' permet de garder l'image légère.
RUN apk add --no-cache ffmpeg

# 4. Revenir à l'utilisateur "node" par défaut pour la sécurité, comme dans l'image originale
USER node
