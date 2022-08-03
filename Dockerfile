FROM golang:alpine

WORKDIR /usr/src/app

COPY . .

CMD ["go", "run", "."]