FROM gcr.io/kaniko-project/executor:v1.13.0 AS kaniko

FROM jenkins/inbound-agent:latest

# 1. Cambiar a root para poder copiar y chown
USER root

# 2. Copiar Kaniko y dar permisos
COPY --from=kaniko /kaniko /kaniko
RUN chown -R jenkins:jenkins /kaniko

# 3. Volver a jenkins y ajustar PATH
USER jenkins
ENV PATH=$PATH:/kaniko
