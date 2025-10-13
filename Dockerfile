# Imagen base de Java (JDK 22)
FROM eclipse-temurin:22-jdk

# Carpeta donde vivirá tu app dentro del contenedor
WORKDIR /app

# Copiamos el .jar y las librerías al contenedor
COPY dist/SistemaVentas.jar app.jar
COPY dist/lib ./lib

# Exponemos un puerto (opcional)
EXPOSE 8080

# Comando que ejecutará tu aplicación
CMD ["java", "-jar", "app.jar"]
