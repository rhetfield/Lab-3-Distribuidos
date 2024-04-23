#FROM golang:latest

#WORKDIR /app
#COPY servidor/servidor.go .

#RUN go build servidor.go

#EXPOSE 8080

#CMD ["./servidor"]

# Usa la imagen oficial de Go como base
FROM golang:latest

# Establece el directorio de trabajo dentro del contenedor
WORKDIR /go/src/app

# Copia el código fuente del proyecto al contenedor
COPY . .

# Compila el proyecto
#RUN go build -o main .

# Expone el puerto en el que tu aplicación Go escucha
EXPOSE 8080

# Comando por defecto para ejecutar tu aplicación cuando se inicie el contenedor
CMD ["./main"]