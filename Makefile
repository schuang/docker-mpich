USER = schuang
REPO = mpich
TAG = 3.2


all: build

build:
	docker build . -t ${USER}/${REPO}:${TAG}

push:
	docker push ${USER}/${REPO}:${TAG}

clean:
	docker system prune -a -f
