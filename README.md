# StyleGAN Web Containers

This project provides example configurations for deploying StyleGAN models using Docker, integrated with FastAPI for the backend and Vue.js for the frontend.

This repository consists of the following two submodules:

- [StyleGAN FastAPI](https://github.com/curegit/stylegan-fastapi)
- [StyleGAN Vue](https://github.com/curegit/stylegan-vue)

## Compose Locally

```sh
git clone --recursive https://github.com/curegit/stylegan-web.git
cd stylegan-web
docker compose build
docker compose up
```

## Pull from GHCR

```sh
# API Server
docker run -d -p 8000:8000 "ghcr.io/curegit/stylegan-web-server:master"
# Client
docker run -d -p 8080:80 --env VITE_STYLEGAN_API="http://localhost:8000" "ghcr.io/curegit/stylegan-web-client:master"
```

## License

This project is licensed under the [CC BY-NC 4.0](LICENSE).

Please refer to the licenses of the submodules as well.
