#!/bin/bash
set -ex

cd /root

go version

CGO_ENABLED=0 go build .

