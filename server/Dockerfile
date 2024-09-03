FROM python:3.12
WORKDIR /server/
COPY ./app/ ./
RUN pip3 install --no-cache-dir -U -r requirements.txt
EXPOSE 80
CMD ["python3", "-m", "uvicorn", "--host", "0.0.0.0", "--port", "80", "main:app"]
