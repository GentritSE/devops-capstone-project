# Përdor Python 3.9 slim si imazh bazë
FROM python:3.9-slim

# Krijojmë një direktori pune për aplikacionin
WORKDIR /app

# Kopjojmë requirements dhe instalojmë varësitë
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Kopjojmë gjithë kodin e mbetur në kontejner
COPY . .

# Ekspozojmë portin 8080 që do të përdorë aplikacioni
EXPOSE 8080

# Komanda për të nisur aplikacionin me Gunicorn
CMD ["gunicorn", "--bind=0.0.0.0:8080", "--log-level=info", "service:app"]
