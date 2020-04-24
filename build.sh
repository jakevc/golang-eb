#!/bin/bash
set -xe 

# rm current go files
touch /var/app/current/go.bak
sudo rm /var/app/current/go.*

# create the application binary that eb uses
GOOS=linux GOARCH=amd64 go build -o bin/application -ldflags="-s -w"