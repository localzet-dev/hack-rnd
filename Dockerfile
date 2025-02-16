FROM node:alpine AS build
WORKDIR /app

COPY package*.json ./
RUN npm install

COPY . .
RUN npm run build

FROM php:apache
COPY --from=build /app/dist /var/www/html/

EXPOSE 80
CMD ["apache2-foreground"]
