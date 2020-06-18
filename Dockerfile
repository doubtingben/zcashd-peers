# FROM golang:1.13 as builder

# ADD . /app
# WORKDIR /app
# RUN make build

# FROM alpine:latest
# RUN apk --no-cache add ca-certificates
# WORKDIR /root/
# COPY --from=builder /app/zcashd-peers /usr/local/bin/zcashd-peers
# ENTRYPOINT ["zcashd-peers"]

FROM alpine:latest
RUN apk --no-cache add ca-certificates
WORKDIR /root/
ADD zcashd-peers /usr/local/bin/zcashd-peers
ENTRYPOINT ["zcashd-peers"]