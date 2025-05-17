#!/bin/sh
# Fuerza que HOME apunte al home de jenkins
export HOME=/home/jenkins

# Crea el directorio .docker en su home (permite guardar credenciales)
mkdir -p "$HOME/.docker"

# Lanza Kaniko desde /kaniko/executor
exec /kaniko/executor "$@"
