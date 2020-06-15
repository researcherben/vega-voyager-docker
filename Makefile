

# https://www.gnu.org/software/make/manual/html_node/Phony-Targets.html 
.PHONY: help clean docker dockerlive

help:
	@echo "make help"
	@echo "      this message"
	@echo "==== Targets outside container ===="
	@echo "make docker"
	@echo "      build and run docker"
	@echo "make dockerlive"
	@echo "      build and run docker /bin/bash"


docker:
	docker build -f Dockerfile.node_old -t voyager_node .
	docker run -it --rm -v`pwd`:/scratch/ \
           --publish 9000:9000 voyager_node

dockerlive:
	docker build -f Dockerfile.node_old -t voyager_node .
	docker run -it --rm -v`pwd`:/scratch/ \
           --entrypoint='' \
           --publish 9000:0000 voyager_node /bin/bash

