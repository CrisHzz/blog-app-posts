FROM gcr.io/kaniko-project/executor:v1.13.0 AS kaniko

FROM jenkins/inbound-agent:latest

USER root
COPY --from=kaniko /kaniko /kaniko
RUN mkdir -p /kaniko/.docker && chown -R jenkins:jenkins /kaniko

USER jenkins
ENV PATH=$PATH:/kaniko
