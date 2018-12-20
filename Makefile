
deploy: login build push

build: 
	export $(cat bin/env | xargs);\
	DOCKER_REGISTRY=${ECR_URL} docker-compose build

login:
	bin/login

push:
	export $(cat bin/env | xargs);\
	DOCKER_REGISTRY=${ECR_URL} docker-compose push

repo:
	bin/create_repo

up:
	export $(cat bin/env | xargs);\
	DOCKER_REGISTRY=${ECR_URL} docker-compose up

down:
	export $(cat bin/env | xargs);\
	DOCKER_REGISTRY=${ECR_URL} docker-compose down
