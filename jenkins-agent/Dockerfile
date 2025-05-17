FROM gcr.io/kaniko-project/executor:v1.13.0 AS kaniko

FROM jenkins/inbound-agent:latest

# 1) Cambiar a root para copiar y ajustar permisos
USER root

# 2) Copiar todo /kaniko desde la etapa kaniko
COPY --from=kaniko /kaniko /kaniko

# 3) Crear el workspace interno que tu build.sh necesita (/kaniko/.docker)
#    y darle la propiedad al usuario jenkins
RUN mkdir -p /kaniko/.docker \
 && chown -R jenkins:jenkins /kaniko

# 4) Volver a jenkins y ajustar PATH
USER jenkins
ENV PATH=$PATH:/kaniko
