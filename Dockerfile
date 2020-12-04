FROM golang:1.14-alpine

# go modulesの設定
ENV GO111MODULE on

# /go/src配下にappディレクトリ作成
RUN mkdir app

# /go/srcがWORKDIRになっているので変更
WORKDIR /go/src/app

# docker-hands-onのfileをWORKDIRに追加
ADD . .

# modulesのダウンロード
RUN go mod download

# ビルド
RUN go build -o main

# ./mainを実行
CMD ["./main"]
