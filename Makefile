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
	sudo mysql -h 127.0.0.1 -P 3306 -u wp_user -pa wp_data

re: fclean up