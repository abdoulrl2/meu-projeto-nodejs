# Use uma imagem officials do Node.js como base
FROM node:14

# Cria e define o directoire de trabalho dentro do container
WORKDIR /app

# Copia o package.json e o package-lock.json (se existir)
COPY package*.json ./

# Instala as dependências
RUN npm install

# Copia o restante do código da aplicação
COPY . .

# Expõe a porta que o app usará (por exemplo, 3000)
EXPOSE 3000

# Comando para iniciar a aplicação
CMD [ "npm", "start" ]
