FROM node:lts
WORKDIR /app/
COPY ./app/package.json ./
RUN npm install
COPY ./app/ ./
EXPOSE 80
ARG VITE_STYLEGAN_API
ENV VITE_STYLEGAN_API="${VITE_STYLEGAN_API:-}"
CMD ["npm", "run", "dev", "--", "--host", "--port", "80"]
