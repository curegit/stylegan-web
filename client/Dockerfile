FROM node:lts AS build-stage
WORKDIR /app/
COPY ./app/package.json ./
RUN npm install
COPY ./app/ ./
RUN npm run build

FROM busybox
WORKDIR /www/
COPY --from=build-stage /app/dist/ ./
EXPOSE 80
CMD ["busybox", "httpd", "-f", "-v", "-p", "80"]
