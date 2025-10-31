FROM python:3.10-slim
WORKDIR /app
COPY . .
RUN pip install -r requirements.txt
ENV PYTHONPATH=/app
CMD ["pytest", "--junitxml=reports.xml", "-q"]