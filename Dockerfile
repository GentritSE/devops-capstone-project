FROM python:3.9-slim

WORKDIR /app

COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

COPY . .

RUN useradd -u 888 appuser && chown -R appuser /app
USER appuser

EXPOSE 8080

CMD ["gunicorn", "--bind=0.0.0.0:8080", "service:app"]
