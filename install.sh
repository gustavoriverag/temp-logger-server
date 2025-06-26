#!/bin/bash -x

[ "$UID" -eq 0 ] || exec sudo "$0" "$@"

ln -sf "$PWD"/src/logger-server.py /usr/local/bin/
mkdir -p -v /var/local/temp-logger 
chmod +x /usr/local/bin/logger-server.py
cp ./src/logger.service /etc/systemd/system/logger-server.service
systemctl enable logger-server.service

service logger-server restart
