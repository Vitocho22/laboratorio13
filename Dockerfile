# Usa una imagen base de Node.js
FROM node:14

# Establece el directorio de trabajo en /app
WORKDIR /app

# Copia los archivos de tu proyecto al directorio de trabajo en el contenedor
COPY package*.json ./
COPY . .

# Instala las dependencias del proyecto
RUN npm install

# Expone el puerto en el que funciona tu aplicación
EXPOSE 9000

# Comando para ejecutar tu aplicación
CMD ["node", "index.js"]