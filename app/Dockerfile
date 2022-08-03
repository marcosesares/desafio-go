FROM golang:1.19-alpine3.16 AS build

WORKDIR /usr/src/app

COPY . .

RUN CGO_ENABLED=0 go build -ldflags='-s -w' -o /desafio-go/app

FROM scratch

COPY --from=build /desafio-go/app /desafio-go/app

ENTRYPOINT ["/desafio-go/app"]
