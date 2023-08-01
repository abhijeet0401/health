FROM python:3
WORKDIR /app
COPY requirements.txt .
RUN pip install -r requirements.txt --use-deprecated=backtrack-on-build-failures

COPY . .

CMD ["python","app.py"]
