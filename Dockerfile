FROM node:14-alpine as build
WORKDIR /app
COPY . /app
RUN npm install && npm run build

# CMD [ "npm start" ] chạy định dạng dev mode

FROM nginx:stable-alpine
COPY --from=build /app/build /usr/share/nginx/html
# EXPOSE 3000
