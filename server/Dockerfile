FROM python:3.12
RUN apt-get update && apt-get install -y --no-install-recommends libhdf5-dev
WORKDIR /server/
COPY ./app/ ./
RUN pip3 install --no-cache-dir -U -r guni/requirements.txt
COPY config.toml ./
ENV STYLEGAN_TOML=config.toml
EXPOSE 8000
CMD ["python3", "-m", "gunicorn", "-c", "guni/conf.py", "--bind", "0.0.0.0:8000", "--workers", "4", "main:app"]
