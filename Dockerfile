# Utiliser une image Java de base
FROM openjdk:11-jdk-slim

# Définir le répertoire de travail
WORKDIR /app

# Copier le fichier JAR généré
COPY target/docker-java-app-1.0.jar app.jar

# Exposer le port utilisé par Spring Boot
EXPOSE 8080

# Commande pour démarrer l'application
CMD ["java", "-jar", "app.jar"]
