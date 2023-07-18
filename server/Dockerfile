FROM python:3.11

WORKDIR /usr/local/server

COPY ./app/ .

RUN pip install --no-cache-dir -r requirements.txt

CMD ["python", "-m", "uvicorn", "main:app", "--bind", "0.0.0.0"]
