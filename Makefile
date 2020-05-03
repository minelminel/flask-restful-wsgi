IMAGE=httpd-vhost

build:
	docker build -t ${IMAGE} .

run: build
	docker run -d -p 8000:80 ${IMAGE}

shell: build
	docker run -it --entrypoint /bin/bash ${IMAGE}
