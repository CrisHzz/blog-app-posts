#!/bin/sh

# 1) Define HOME al home de Jenkins
export HOME=/home/jenkins

# 2) Crea únicamente el subdirectorio .docker (Jamás el home completo)
mkdir -p "$HOME/.docker"

# 3) Lanza Kaniko desde la ruta absoluta
exec /kaniko/executor "$@"
