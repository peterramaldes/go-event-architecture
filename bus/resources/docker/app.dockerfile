FROM golang:1.18-alpine3.15 AS build

WORKDIR /app

COPY go.mod ./
RUN go mod download

# TODO: Copy go sum
# TODO: go mod download

COPY *.go ./

RUN go build -o /bus

CMD ["/bus"]
