# Installation and configuration for Inception

https://spinupwp.com/hosting-wordpress-yourself-nginx-php-mysql/

******************* here ****************
https://spinupwp.com/hosting-wordpress-yourself-nginx-php-mysql/


## VirtualBox with Ubuntu
Your Host need be able to DO virtualization. 
In Oracle-VM-VirtualBox-Manager enable:
	- Setting > System > Processor: Enalbe nested VT-x/AMD-V
	- Setting > System > Acceleration> Paravirtualition interface: KVM

## openssh-server

To connect the VisualStudio Code with the Host, the ssh-server is needed in your Host.
Plugings for VSCode "Remote - SSH" and "Remote - SSH: Editing Configuration Files" to connect with your Host.

											# Comments
	apt-get install openssh-server			# Install ssh-server.
	nano /etc/ssh/sshd_config				# Add Port 2222 and restart the service.
	systemctl restart ssh					# Restart ssh.
	systemctl status ssh					# Check ssh status.
	sudo service ssh status					# Check ssh status.
	ssh amorcill@<ipadress> -p 2222			# To Connect from the client.

## KVM Virtualization Support
[KVM](https://docs.docker.com/desktop/linux/install/#kvm-virtualization-support)

Your Host need be able to DO virtualization. 
In Oracle-VM-VirtualBox-Manager enable:
	- Setting > System > Processor: Enalbe nested VT-x/AMD-V
	- Setting > System > Acceleration> Paravirtualition interface: KVM

											# Comments
	modprobe kvm							# Module should load automatically if the host has virtualization support.
	modprobe kvm_intel						# Depending on the processor, the corresponding module must be loaded.
	kvm-ok									# Checks.
	lsmod | grep kvm						# To check if the KVM modules are enabled.

Set up KVM device user permissions:
	ls -al /dev/kvm
	sudo usermod -aG kvm $USER
	groups $USER							# Check if kvm is in your group.


## Install Docker Compose
	- Requires Docker Engine.
	- Requires Docker CLI.

## Install Docker Engine on Ubuntu
[Docker_Engine](https://docs.docker.com/engine/install/ubuntu/#set-up-the-repository)

Install using the repository:
Before you install Docker Engine for the first time on a new host machine, you need to set up the Docker repository. Afterward, you can install and update Docker from the repository.

	1). Update the apt package index and install packages to allow apt to use a repository over HTTPS:

		sudo apt-get update
		sudo apt-get install \
			ca-certificates \
			curl \
			gnupg \
			lsb-release

	2). Add Docker’s official GPG key:
		
		sudo mkdir -p /etc/apt/keyrings
		curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg

	3). Use the following command to set up the repository:

		echo \
		"deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/ubuntu \
		$(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null

Install Docker Engine:

	1). Update the apt package index, and install the latest version of Docker Engine, containerd, and Docker Compose, or go to the next step to install a specific version:

		sudo apt-get update
		sudo apt-get install docker-ce docker-ce-cli containerd.io docker-compose-plugin

	2). Verify that Docker Engine is installed correctly by running the hello-world image.

		sudo docker run hello-world


## Installing Compose on Linux systems

Install using the repository:

	1). Update the apt package index, and install the latest version of Docker Compose:
		
		sudo apt-get update
 		sudo apt-get install docker-compose-plugin

	2). Verify that Docker Compose is installed correctly by checking the version.

 		docker compose version




## Install NGINX (No needed to install, it is install from docker-compose.yml)
[nginx](https://hub.docker.com/_/nginx)
																# Comments
	sudo docker pull nginx										# To install.
	sudo docker run -it --rm -d -p 8080:80 --name web nginx		# To start the web-server nginx.
	http://localhost:8080										# Welcome page from web-server nginx.
	sudo docker stop web										# Stop docker web-server nginx.
	sudo docker ps												# To see container running in dockers.
	nginx -V													# nginx version

	/usr/share/nginx/html										# Path to nginx web-page-welcome: 


## Nginx commands
https://www.freecodecamp.org/news/the-nginx-handbook/#how-to-write-your-first-configuration-file

	nginx -s reload												# Reload
	nginx -t													# Check the file for any syntax mistakes.
	nginx -s reload
	nginx -s stop
	nginx -s quit
	nginx -s reopen



## Config NGINX
[Config_ngnix_1](https://www.docker.com/blog/how-to-use-the-official-nginx-docker-image/)
[Config_ngnix_2](https://www.cyberciti.biz/faq/configure-nginx-to-use-only-tls-1-2-and-1-3/)
[Config_ngnix_3](https://dev.to/aminnairi/quick-web-server-with-nginx-on-docker-compose-43ol)

	openssl version

# More Commands
												# Comments
	docker compose up							# Start
	docker compose down							# Stop
	docker compose build						# 
	docker compose stop							# 
	docker compose start						# 

	docker ps -a								# Process
	docker log <container-id>					# Logs

	docker exec -it <container-id> sh			# Connect to a container sh
	docker exec -it <container-id> /bin/bash	# Connect to a container bash
	docker exec -it <container-id> /bin/sh		# Connect to a container bin/sh

	/var/lib/docker/volumes						# Path to the docker volumes in host

