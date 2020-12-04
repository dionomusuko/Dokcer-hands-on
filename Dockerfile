FROM golang:1.14-alpine

# go modulesの設定
ENV GO111MODULE on

# /goがWORKDIRになっているので変更
WORKDIR /go/src/app

# docker-hands-onのfileをWORKDIRに追加
COPY . .

# modulesのダウンロード
RUN go mod download

# ビルド
RUN go build -o main

# ./mainを実行
CMD ["./main"]
