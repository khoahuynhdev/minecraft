NAME = minecraft
VERSION = 1.0
DOCKER_FILE ?= docker-compose.yml

.PHONY: up down ps

up:
	docker-compose -f $(DOCKER_FILE) up -d --remove-orphans --force-recreate
down:
	docker-compose -f $(DOCKER_FILE) down
ps:
	docker-compose -f $(DOCKER_FILE) ps
