IMAGE_NAME:=mtthan/testmaven
IMAGE_TAG:=$(shell git rev-parse HEAD)
default:
	cat ./Makefile
dist:
	./mvnw clean package
image:
	 docker build -t $(IMAGE_NAME):$(IMAGE_TAG) -t $(IMAGE_NAME):latest .
run:
	 docker run $(IMAGE_NAME):$(IMAGE_TAG)
run-bash:
	 docker run -it $(IMAGE_NAME):$(IMAGE_TAG) /bin/bash
push:
	 docker push $(IMAGE_NAME):$(IMAGE_TAG)
	 docker push $(IMAGE_NAME):latest
tag:
	 git tag -m "testmaven-v$(IMAGE_TAG)" -a "v$(IMAGE_TAG)"
	 git push --tags
all: dist image
