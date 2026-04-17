# Generated Dockerfile — Node.js (Express 18)
FROM node:18-alpine
WORKDIR /app
COPY package*.json ./
RUN npm install --omit=dev --legacy-peer-deps
COPY . .
EXPOSE 3000
CMD ["node", "index.js"]
