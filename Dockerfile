#FROM alpine:latest
FROM golang:1.15.6

WORKDIR /app
COPY . .
RUN make telegraf

CMD ["./telegraf", "--config", "telegraf.conf.test"]

