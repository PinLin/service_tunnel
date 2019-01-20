# Service Tunnel for CHIP
Create SSH tunnel Systemd service to my GCP VPS for services on CHIP.

## Service
+ `CHIP SSH`: 
  +  **localhost:22**
  +  **ntut.com.tw:20023**

## Install
1. Clone and enter it.
```bash
git clone https://git.ntut.com.tw/PinLin/service_tunnel.git
cd service_tunnel
```

2. Switch branch to chip
```bash
git checkout chip
```

3. Execute `install.sh`
```bash
sudo ./install.sh $USER
```

## Run
Start service.
```bash
sudo systemctl start service_tunnel
```

Stop service.
```bash
sudo systemctl stop service_tunnel
```