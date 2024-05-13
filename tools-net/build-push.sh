#!/usr/bin/env bash

echo "starting build script"
echo "in $(pwd)"
echo

docker compose build --pull --push


docker image ls
