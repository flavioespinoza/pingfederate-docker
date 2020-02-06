IMG_NAME   := flavioespinoza/ping
BRANCH    := $(shell git rev-parse --abbrev-ref HEAD)
TAG := demo-${BRANCH}
IMG    := ${IMG_NAME}:${TAG}

test:
		@echo ${IMG}

build:
	@echo "***** Building Docker Image ${IMG} *****"
	docker build -f ./Dockerfile.release -t ${IMG} .
	@echo "***** Building Docker Image ${IMG} *****"

push:
	@echo "***** Pushing Docker Image ${IMG} *****"
	docker push ${IMG}
	@echo "***** Pushing Docker Image ${IMG} *****"
