# 1. Usar una imagen base de JDK (Java Development Kit)
FROM openjdk:17-jdk-slim

# 2. Establecer el directorio de trabajo dentro del contenedor
WORKDIR /app

# 3. Copiar el archivo JAR del proyecto al contenedor
COPY target/*.jar app.jar

# 4. Exponer el puerto que utiliza tu aplicación (por defecto, 8080 en Spring Boot)
EXPOSE 8080

# 5. Comando para ejecutar la aplicación
ENTRYPOINT ["java", "-jar", "app.jar"]