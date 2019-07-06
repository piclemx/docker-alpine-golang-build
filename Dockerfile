FROM golang:1.12-alpine

RUN apk update && apk add --no-cache ca-certificates curl make git librdkafka-dev pkgconf

# Install dependency manager
RUN curl -fsSL -o /usr/local/bin/dep https://github.com/golang/dep/releases/download/v0.4.1/dep-linux-amd64 && chmod +x /usr/local/bin/dep
