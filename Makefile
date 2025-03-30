.PHONY: build serve clean docker-build

docker-build:
	docker build -t sightdb-site .

build: docker-build
	docker run --rm -v $(PWD):/site sightdb-site bundle exec jekyll build

serve: docker-build
	docker run --rm -p 4000:4000 -v $(PWD):/site sightdb-site

clean:
	rm -rf _site .jekyll-cache

# Default target
all: build

help:
	@echo "Available commands:"
	@echo "  make docker-build  - Build the Docker image"
	@echo "  make build        - Build the static site using Docker"
	@echo "  make serve        - Start local development server using Docker"
	@echo "  make clean        - Remove generated files"