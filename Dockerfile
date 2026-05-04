FROM node:18-alpine
WORKDIR /app
COPY package*.json ./
RUN npm install --omit=dev --legacy-peer-deps
COPY . .
EXPOSE 5000
HEALTHCHECK CMD curl -f http://localhost:5000/health || exit 1
CMD ["node", "index.js"]