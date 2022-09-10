FROM python:3.7.4-slim

WORKDIR /mlflow/

ARG MLFLOW_VERSION=1.28.0
RUN pip install mlflow==$MLFLOW_VERSION

EXPOSE 5000

ENV BACKEND_URI /mlflow
CMD mlflow server \
  --backend-store-uri ${BACKEND_URI} \
  --host 0.0.0.0 \
  --port 5000