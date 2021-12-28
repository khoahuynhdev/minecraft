NAME = minecraft
VERSION = 1.0
DOCKER_FILE ?= docker-compose.yml

.PHONY: up down ps

up:
	docker-compose -f $(DOCKER_FILE) up -d --remove-orphans
down:
	docker-compose -f $(DOCKER_FILE) down --force-recreate
ps:
	docker-compose -f $(DOCKER_FILE) ps
