.PHONY: build run

build: Dockerfile
	@docker build -t jupyter-statsmodels .

run:
	@docker run --interactive \
		--tty \
		--rm \
		--name jupyter \
		-p 8888:8888 \
		-v $(shell pwd)/data:/var/data \
		jupyter-statsmodels \
		jupyter notebook --notebook-dir=/var/data  --allow-root --ip=0.0.0.0

default: build
