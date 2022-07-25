## Inception

	https://medium.com/swlh/wordpress-deployment-with-nginx-php-fpm-and-mariadb-using-docker-compose-55f59e5c1a

	https://en.m.wikipedia.org/wiki/Docker_(software)
	https://docs.docker.com/
	https://docs.docker.com/engine/reference/builder/
	https://docs.docker.com/compose/compose-file/
	https://www.youtube.com/watch?v=31ieHmcTUOk&list=PL4cUxeGkcC9hxjeEtdHFNYMtCpjNBm3h7
	https://medium.com/swlh/wordpress-deployment-with-nginx-php-fpm-and-mariadb-using-docker-compose-55f59e5c1a
	https://medium.com/freestoneinfotech/simplifying-docker-compose-operations-using-makefile-26d451456d63
	https://www.ibm.com/cloud/learn/containers
	https://www.geeksforgeeks.org/docker-concept-of-dockerfile/
	https://docs.docker.com/compose/
	https://docs.docker.com/compose/compose-file/
	https://dev.to/flpslv/using-makefiles-to-build-and-publish-docker-containers-7c8
	https://www.nginx.com/blog/deploying-nginx-nginx-plus-docker/
	https://www.digitalocean.com/community/tutorials/how-to-install-nginx-on-debian-10
	https://stackoverflow.com/questions/22111060/what-is-the-difference-between-expose-and-publish-in-docker
	https://www.linode.com/docs/guides/how-to-configure-nginx/

## Create SSL Certificate:
	Create & sign SSL/TLS certificates with openssl:
	https://www.youtube.com/watch?v=7YgaZIFn7mY&t=17s

	https://www.openssl.org/docs/man1.0.2/man1/openssl-req.html
	https://comodosslstore.com/resources/what-is-a-sha256-ssl-certificate/
	https://stackoverflow.com/questions/10175812/how-to-generate-a-self-signed-ssl-certificate-using-openssl

## Wordpress:
	https://www.hostinger.com/tutorials/run-docker-wordpress
	https://davidyeiser.com/tutorials/docker-wordpress-theme-setup
	https://www.ionos.com/digitalguide/server/know-how/wordpress-in-docker-containers/
	https://upcloud.com/community/tutorials/wordpress-with-docker/
	https://code.tutsplus.com/articles/download-and-install-wordpress-via-the-shell-over-ssh--wp-24403

## Docker:
	https://www.youtube.com/watch?v=YFl2mCHdv24
	https://www.youtube.com/watch?v=Qw9zlE3t8Ko
	https://www.youtube.com/watch?v=31ieHmcTUOk&list=PL4cUxeGkcC9hxjeEtdHFNYMtCpjNBm3h7

## Steps:
	-Debian:Buster (https://www.debian.org/releases/buster/debian-installer/index.en.html)
	In etc/sudoers ==> username ALL=(ALL) NOPASSWD:ALL
	In Virtual Box set it to Bridged Adapter
	Install Docker: https://docs.docker.com/engine/install/debian/#prerequisites
	
## Tips:
	-VS Code Plugin: Remote SSH (connect ip virtual machine in VS Code)
	-Debian:Buster (https://www.debian.org/releases/buster/debian-installer/index.en.html)

## Commands:
	sudo apt install make
	sudo docker exec -it IMG-ID /bin/bash —> Command to run command in Container
	sudo docker exec -it <ID NUMBER>
	sudo docker rm -f <DOCKER ID>				delete container
	sudo docker image rm -f <NAME>				delete image
	
	Launch your Docker Image:
	sudo docker ps							show container overview
	sudo docker image ls						show images
	sudo docker compose up -d nginx				create image (-d for background)
	sudo docker build -t nginx:1.0 .				
	sudo docker run -d -p 80:80 nginx:1.0			


## Docker DocumentationDocker Documentation
Dockerfiles use a simple DSL which allows you to automate the steps you would normally manually take to create an image.
	https://docs.docker.com/engine/reference/builder/

## Docker DocumentationDocker Documentation
Compose specification. Compose file reference
	https://docs.docker.com/compose/compose-file/