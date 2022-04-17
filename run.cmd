setlocal enabledelayedexpansion
@echo Running using docker compose...

docker compose build
docker compose up -d
start https://localhost:5001