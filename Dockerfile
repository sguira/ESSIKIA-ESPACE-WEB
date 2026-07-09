# Étape 1 : image légère nginx
FROM nginx:alpine

# Supprimer la config par défaut
RUN rm -rf /usr/share/nginx/html/*

# Copier le build Flutter web
COPY . /usr/share/nginx/html

# Exposer le port web
EXPOSE 80

# Lancer nginx
CMD ["nginx", "-g", "daemon off;"]