help:           ## Show this help.
	@fgrep -h "##" $(MAKEFILE_LIST) | fgrep -v fgrep | sed -e 's/\\$$//' | sed -e 's/##//'

master:         ## Use node as master
	make -C consul master

slave:          ## Use node as slave
	make -C consul slave

stop:           ## Stop every services
	make -C consul stop
