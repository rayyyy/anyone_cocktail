# docker用 Makefile

build:
	docker-compose build

up:
	docker-compose up -d

upb:
	docker-compose up -d --build

x:
	docker-compose exec app sh

ps:
	docker ps -a && echo "\n"
	docker-compose ps

rm:
	docker-compose down