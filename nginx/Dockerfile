FROM node:16-alpine as build-stage

WORKDIR /app
COPY ./frontend-test/package*.json ./
RUN npm install
COPY ./frontend-test/ ./
RUN npm run build


FROM nginx:1.21.5-alpine as production-stage

RUN mkdir /app
COPY --from=build-stage /app/dist /var/www/html
COPY ./nginx/config/nginx.conf /etc/nginx/nginx.conf
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
