IMAGE_NAME = mantis/image
CONTAINER_NAME = mantis

HOME = /shared

.PHONY: all

all: clean build run

clean:
	docker rmi -f ${IMAGE_NAME} 2>/dev/null || true
	docker images | grep ${IMAGE_NAME} || true
	docker rm -f $$(docker ps -a -q) || true
	docker ps -a

build:
	docker build -t ${IMAGE_NAME} .

stop:
	docker rm -f ${CONTAINER_NAME} 2>/dev/null || true

run: stop
	docker run --name=${CONTAINER_NAME} -p 80:8080 -v $$PWD:${HOME} -ti -d ${IMAGE_NAME}

ssh:
	docker exec -ti ${CONTAINER_NAME} bash