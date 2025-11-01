FROM python:3.10-slim
WORKDIR /app
COPY . .
RUN pip install -r requirements.txt
ENV PYTHONPATH=/app
CMD ["pytest", "-nauto", "--maxfail=1", "--junitxml=reports.xml", "--cov=src", "--cov-report=xml"]
