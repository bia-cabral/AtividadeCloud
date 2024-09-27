# Use uma imagem base oficial do Node.js
FROM node:18

# Defina o diretório de trabalho dentro do container
WORKDIR /app

# Copie o arquivo package.json e package-lock.json para o diretório de trabalho
COPY package*.json ./

# Instale as dependências do projeto
RUN npm install

# Copie o restante dos arquivos do projeto para o diretório de trabalho
COPY . .

# Exponha a porta que sua aplicação usa (substitua pela porta correta se necessário)
EXPOSE 3000

# Comando para iniciar a aplicação
CMD ["npm", "start"]
