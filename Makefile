
deploy: login build push

build: 
	bin/build

login:
	bin/login

push:
	bin/push

repo:
	bin/create_repo

up:
	bin/up

down:
	bin/down
