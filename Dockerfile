#Usar la imagen oficial de openjdk
FROM openjdk:21-ea-slim-buster
#Configuramos el directiorio de trabajo
WORKDIR /app
#Copiamos el fichero jar
COPY target/garajesyempleados-0.0.1-SNAPSHOT.jar .
#Exponemos el puerto de TomCat
EXPOSE 8080
#Comando para ejecutar la aplicación
CMD ["java", "-jar", "garajesyempleados-0.0.1-SNAPSHOT.jar"]
