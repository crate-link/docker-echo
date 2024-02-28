FROM golang:1.22

COPY echo-server/ /root

RUN /bin/bash /root/build.sh


FROM gcr.io/distroless/static

COPY --from=0 /root/echo-server /usr/local/bin/echo-server

EXPOSE 2019

ENTRYPOINT [ "echo-server" ]
