configure:
	./setup.sh

master: configure
	docker-compose up -d agent

slave: configure
	docker-compose up -d agent

stop:
	docker-compose stop
