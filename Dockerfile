FROM openjdk:17-jdk-slim
 
# Directorio de trabajo dentro del contenedor
WORKDIR /app
 
# Copiar el archivo JAR al contenedor
COPY target/ChessRatingCalculator-1.0.0.jar /app/app.jar
 
# Exponer el puerto si la app lo necesita
EXPOSE 8000
 
# Comando para lanzar la aplicación
ENTRYPOINT ["java", "-jar", "/app/app.jar"]
