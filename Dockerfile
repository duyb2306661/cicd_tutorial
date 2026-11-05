FROM python:3.11-slim

WORKDIR /flask_app

COPY requirements.txt .

RUN pip install --no-cache-dir -r requirements.txt

COPY flask_docker.py .

EXPOSE 5000

ENTRYPOINT ["python3"]

CMD ["flask_docker.py"]
