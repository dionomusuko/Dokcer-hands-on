FROM golang:1.14-alpine

ENV GO111MODULE on

RUN mkdir app

WORKDIR /go/src/app

ADD . .

RUN go mod download

RUN go build -o main

EXPOSE 8081

CMD ["./main"]
