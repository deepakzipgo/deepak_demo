
deploy: login build push

build: 
	. bin/env;\
	DOCKER_REGISTRY=${ECR_URL} docker-compose build

login:
	bin/login

push:
	. bin/env;\
	DOCKER_REGISTRY=${ECR_URL} docker-compose push

repo:
	bin/create_repo