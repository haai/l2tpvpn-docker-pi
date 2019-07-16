
registry := hub.docker.com
image := haai/l2tpvpn
tag := 0.1.0

build:
	docker build -t ${image}:${tag} l2tpvpn

push:
	docker push ${image}:${tag}

