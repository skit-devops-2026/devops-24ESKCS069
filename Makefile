# Every team fills in the commands for their own stack.
# The CI pipeline calls these targets, so the names must not change.

.PHONY: install test build run docker-build docker-up

install:
	@echo "No install needed"

test:
	npx --yes jest

build:
	@echo "Build complete"

run:
	docker compose up --build

# Needed from M4 onwards
docker-build:
	docker build -t ghcr.io/skit-devops-2026/devops-24eskcs069:latest .

docker-up:
	docker compose up --build -d
