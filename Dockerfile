FROM golang:1.13

ADD . /app
WORKDIR /app
RUN go build && ls -l
CMD ["./zcashd-peers"]