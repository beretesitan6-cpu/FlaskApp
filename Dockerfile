# Utiliser une image Python officielle
FROM python:3.13-slim

# Définir le répertoire de travail
WORKDIR /app

# Copier les fichiers de l'application
COPY requirements.txt requirements.txt
RUN pip install --no-cache-dir -r requirements.txt
COPY . .

# Exposer le port 5000
EXPOSE 5000

# Commande pour démarrer l'application
CMD ["python", "app.py"]
