FROM python:3.11-slim

WORKDIR /app

COPY requirements.txt .
RUN pip install -r requirements.txt 

COPY . .

ENV PORT=8000
EXPOSE 8000
CMD ["python3", "manage.py","runserver","0.0.0.0:8000"]
