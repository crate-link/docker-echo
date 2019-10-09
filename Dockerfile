FROM golang:1.13

COPY echo-server/ /root

ENV GO111MODULE=on

RUN /root/build.sh


FROM gcr.io/distroless/static

COPY --from=0 /root/echo-server /usr/local/bin/echo-server

EXPOSE 2019

ENTRYPOINT [ "echo-server" ]

