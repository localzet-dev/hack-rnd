FROM node:alpine
WORKDIR /app

COPY package*.json ./
RUN npm install

COPY . .
RUN npm run build

RUN npm install -g serve
EXPOSE 3000

CMD ["serve", "-s", "dist", "-l", "0.0.0.0:3000"]
