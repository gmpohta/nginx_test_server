DC=docker-compose

up: 
	${DC} up -d --force-recreate --build

stop: 
	${DC} stop

down: 
	${DC} down

nginx-log: 
	$(info Nginx stdout logs)
	${DC} logs -f nginx

php-log: 
	$(info Php-fpm stdout logs)
	${DC} logs -f php

