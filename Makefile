run:
	docker run -d -p 8081:8081 practice/go
build:
	docker build -t practice/go:latest .
check:
	docker exec -it container-id sh
