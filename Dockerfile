FROM golang:1.16.0-alpine3.13 AS builder
COPY . /src
WORKDIR /src
RUN go build -o /app/fullcycle ./*.go

FROM scratch
COPY --from=builder /app/fullcycle .