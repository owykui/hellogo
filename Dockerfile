## build stage
FROM golang:1.13.1-alpine3.10 as build-env
# git
RUN apk update
RUN apk add --no-cache git
# move to GOPATH
RUN mkdir -p /app
WORKDIR /app
# build
COPY . .
RUN go build -o /app/hello main.go

## docker image stage
FROM alpine:3.10
COPY --from=build-env /app /app
EXPOSE 8080
WORKDIR /app
CMD ["/app/hello"]