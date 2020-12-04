run:
	docker run -d -p 8081:8081 practice/go
build:
	docker build -t dionomusuko/docker-hands-on:latest .
check:
	docker exec -it container-id sh
push:
	docker push dionomusuko/docker-hands-on:latest
