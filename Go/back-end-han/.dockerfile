# Etapa 1: Construir a aplicação Go
FROM golang:latest AS builder

# Definir o diretório de trabalho dentro do container
WORKDIR /go/src/app

# Copiar o código-fonte para o diretório de trabalho
COPY . .

# Compilar o código Go
RUN go mod download
RUN go build -o pdftoimage ./cmd/pdftoimage

# Etapa 2: Preparar a instância Node.js
FROM node:latest AS node_builder

# Definir o diretório de trabalho para o Node.js
WORKDIR /app

# Copiar o pacote.json e o arquivo package-lock.json
COPY package*.json ./

# Instalar as dependências do Node.js
RUN npm install

# Etapa 3: Combinação das etapas anteriores
FROM golang:latest

# Copiar o binário compilado da etapa 1
COPY --from=builder /go/src/app/pdftoimage /app/pdftoimage

# Copiar o código-fonte do Node.js da etapa 2
COPY --from=node_builder /app /app

# Definir o diretório de trabalho para o Node.js
WORKDIR /app

# Copiar o arquivo .env para dentro do contêiner
COPY .env .

# Definir variáveis de ambiente (você precisará ajustar as variáveis)
ENV DB=
ENV SECRET_KEY=
ENV ENCRYPTION_KEY=

# Expor a porta necessária (se aplicável)
EXPOSE 8080

# Comando padrão para executar a aplicação
CMD ["./pdftoimage"]
