build-aws-login-helper:
	docker run --rm -ti -v /var/run/docker.sock:/var/run/docker.sock -v `pwd`:`pwd` -w `pwd` docker:latest sh

build-base:
	docker build -t 