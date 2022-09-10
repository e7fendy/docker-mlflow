# docker-mlflow

* MLFlow 1.28.0
* Python 3.7.4-slim

## Usage

Build docker
```
DOCKER_BUILDKIT=1 docker build --rm -f Dockerfile -t e7fendy/mlflow:latest .
```

Run docker
```
docker run -it --rm -v ~/mlflow:/mlflow -p 5000:5000 e7fendy/mlflow:latest
```
