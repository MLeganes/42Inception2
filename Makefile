build:
	mkdir -p ./data/wordpress/content
	mkdir -p ./data/mariadb/database
	sudo docker-compose -f ./srcs/docker-compose.yml build

up:
	sudo docker compose -f ./srcs/docker-compose.yml up

stop:
	sudo docker-compose -f ./srcs/docker-compose.yml stop

clean:
	sudo docker-compose -f ./srcs/docker-compose.yml down

fclean:
	sudo docker-compose -f ./srcs/docker-compose.yml down --volumes --rmi all

mariadb:
	sudo mysql -h 127.0.0.1 -P 3306 -u amorcill -pa pass

re: fclean up

clean-all:
# WARNING: Deleting images, volumes, files in host, everything will be gone.
	sudo docker-compose -f ./srcs/docker-compose.yml down --volumes --rmi all
# WARNING: Delete wordpress folder in host!
	@if [ -d "/home/$(USER)/inception/data/wordpress" ]; then \
	sudo rm -rf /home/$(USER)/inception/data/wordpress/* && \
	echo "successfully removed all contents from /home/$(USER)/inception/data/wordpress/"; \
	fi;

# WARNING: Delete mariadb folder in host!
	@if [ -d "/home/$(USER)/inception/data/mariadb" ]; then \
	sudo rm -rf /home/$(USER)/inception/data/mariadb/* && \
	echo "successfully removed all contents from /home/$(USER)/inception/data/mariadb/"; \
	fi;

	sudo docker system prune -f --volumes -a