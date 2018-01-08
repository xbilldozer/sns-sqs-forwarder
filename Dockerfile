FROM golang:1.9-alpine

WORKDIR /go/src/github.com/xbilldozer/sns-sqs-forwarder

COPY . .

RUN go get
RUN go build

CMD ["sns-sqs-forwarder", "--config", "/config.json"]
