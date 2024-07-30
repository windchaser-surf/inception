build: 
	docker compose -f ./srcs/docker-compose.yml build
up: 
	docker compose -f ./srcs/docker-compose.yml up -d
upc:
	docker compose -f ./srcs/docker-compose.yml build --no-cache
	docker compose -f ./srcs/docker-compose.yml up -d
down: 
	docker compose -f ./srcs/docker-compose.yml down	