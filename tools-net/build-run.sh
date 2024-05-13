#!/usr/bin/env bash

docker compose build --pull
docker compose run --rm tools
