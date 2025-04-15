ARG VERSION=2.21.3-debian-12-r2
FROM docker.io/bitnami/mlflow:${VERSION}
USER root
RUN update-ca-certificates
RUN pip install mlflow-oidc-auth==3.6.1
RUN mkdir -p /tmp/flask_session
RUN chmod -R 777 /tmp/flask_session
ENV SESSION_FILE_DIR=/tmp/flask_session
USER mlflow
WORKDIR /opt/bitnami/mlflow
