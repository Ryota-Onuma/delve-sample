FROM golang:1.21.1-bullseye

WORKDIR /go/src/

COPY ./go.mod ./go.sum  ./

RUN go mod download

COPY . .

# test-user作成
RUN useradd -m test-user

USER test-user

CMD ["go", "run", "main.go"]