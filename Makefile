NAME = minecraft
VERSION = 1.0
DOCKER_FILE ?= docker-compose.yml

up:
	docker-compose -f $(DOCKER_FILE) up -d --remove-orphans
down:
	docker-compose -f $(DOCKER_FILE) down
ps:
	docker-compose -f $(DOCKER_FILE) ps
