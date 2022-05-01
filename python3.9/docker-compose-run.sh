#!/usr/bin/env bash

cd "$(dirname $0)" || exit
docker rm pipenv-lock-creator 2>/dev/null

docker-compose \
  run --rm \
  pipenv-lock-creator \
  ash ./pipenv-lock-create.sh
