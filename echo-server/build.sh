#!/bin/bash
set -ex

cd /root

go version

CGO_ENABLED=0 go build -v -ldflags "-w -s" -trimpath
