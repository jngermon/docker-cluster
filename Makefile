help:           ## Show this help.
	@fgrep -h "##" $(MAKEFILE_LIST) | fgrep -v fgrep | sed -e 's/\\$$//' | sed -e 's/##//'

master:         ## Use node as master
	make -C consul master
	make -C registrator master

slave:          ## Use node as slave
	make -C consul slave
	make -C registrator slave

stop:           ## Stop every services
	make -C consul stop
	make -C registrator stop
	make -C swarm stop
