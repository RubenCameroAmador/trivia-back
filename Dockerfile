# Usa una imagen oficial de Node.js como base
FROM node:20.12.2

# Crea y establece el directorio de trabajo
WORKDIR /usr/src/app

# Copia el package.json y package-lock.json (si existe)
COPY package*.json ./

# Instala las dependencias del proyecto
RUN npm install

# Copia el resto de la aplicación
COPY . .

# Expone el puerto en el que tu aplicación va a correr
EXPOSE 9000

# Comando para ejecutar la aplicación
CMD [ "npm", "run", "dev" ]
