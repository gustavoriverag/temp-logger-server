ln -sf /src/logger-server.py /usr/local/bin/logger-server.py
mkdir -p -v /var/local/logger-server 
chmod +x /usr/local/bin/logger-server.py
cp /src/logger-server.service /etc/systemd/system/logger-server.service
systemctl enable logger-server.service

service logger-server restart
