#FROM alpine:latest
FROM golang:1.15.6 as build

WORKDIR /app
COPY . .
RUN make telegraf
#RUN ["apt-get", "update"]
#RUN ["apt-get", "install", "-y", "vim"]
#RUN apt-get update && apt-get install vim

#RUN ./telegraf -sample-config -input-filter device -output-filter infulxdb -debug
#RUN make telegraf
# RUN ./telegraf -sample-config -input-filter device -output-filter influxdb -debug >> telegraf.conf.test

#FROM golang:1.15.6-alpine
#RUN apk --no-cache add ca-certificates
#WORKDIR /root/
#COPY --from=build /app /
CMD ["./telegraf", "--config", "telegraf.conf.test"]

