#Usar la imagen desarrollo
FROM ubuntu24-jdk21-mvn:latest 
#Configuramos el directiorio de trabajo
WORKDIR /app
#Copiamos el fichero jar
COPY . .
#Compilamos el código
RUN mvn clean package -Dmaven.test.skip=true
#Exponemos el puerto de TomCat
EXPOSE 8080
#Comando para ejecutar la aplicación
CMD ["java", "-jar", "target/garajesyempleados-0.0.1-SNAPSHOT.jar"]
