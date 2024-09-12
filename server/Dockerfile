FROM python:3.12
WORKDIR /server/
RUN apt-get update
RUN apt-get install -y libhdf5-dev
COPY ./app/ ./
RUN pip3 install --no-cache-dir -U -r requirements.txt
EXPOSE 8000
CMD ["python3", "-m", "uvicorn", "--host", "0.0.0.0", "--port", "8000", "main:app"]
