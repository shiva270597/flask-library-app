FROM python:3.10-slim AS builder

WORKDIR /app

RUN apt-get update && pip install --upgrade pip


COPY requirements.txt .

RUN pip install --no-cache-dir -r requirements.txt


COPY . .

EXPOSE 3000

CMD ["python", "app.py"] 
