NAME=inception

all: init
	docker-compose -f ./srcs/docker-compose.yaml up --build -d

init:
	@echo "Creating necessary directories..."
	mkdir -p /home/mballa/data/wordpress
	mkdir -p /home/mballa/data/mariadb

start:
	docker-compose -f ./srcs/docker-compose.yaml start

stop:
	docker-compose -f ./srcs/docker-compose.yaml stop

down:
	docker-compose -f ./srcs/docker-compose.yaml down

clean: down
	sudo rm -rf /home/mballa/data/wordpress
	sudo rm -rf /home/mballa/data/mariadb
	docker volume rm wordpress mariadb

prune:
	docker system prune -af
