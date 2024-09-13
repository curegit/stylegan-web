FROM node:lts AS build-stage
WORKDIR /app/
COPY ./app/package.json ./
RUN npm install
COPY ./app/ ./
ARG VITE_STYLEGAN_API=
RUN VITE_STYLEGAN_API="${VITE_STYLEGAN_API}" npm run build

FROM busybox
WORKDIR /www/
COPY --from=build-stage /app/dist/ ./
EXPOSE 80
CMD ["busybox", "httpd", "-vv", "-f", "-h", ".", "-p", "80"]
