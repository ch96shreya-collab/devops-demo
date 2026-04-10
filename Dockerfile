FROM python:3.11-slim
WORKDIR /app
COPY requirements.txt .
RUN pip install -r --no-cache requirements.txt
COPY app/ .
COPY tests/ ./tests/
EXPOSE 5000
CMD["python","app.py"]
