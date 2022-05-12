# 开机启动 
`sudo vim /etc/systemd/system/frp.service`

```shell
[Unit]
Description=The nginx HTTP and reverse proxy server
After=network.target remote-fs.target nss-lookup.target

[Service]
Type=simple
ExecStart=/home/liuf/myfrp/run509.sh
KillSignal=SIGQUIT
TimeoutStopSec=5
KillMode=process
PrivateTmp=true
StandardOutput=syslog
StandardError=inherit

[Install]
WantedBy=multi-user.target

```
重载服务列表：
`sudo systemctl daemon-reload`
设置服务自启动：
`sudo systemctl enable startsocket.service`

``` shell
sudo systemctl disable xxx (关闭某个服务自启动)
sudo service xxx start (手动启动某个服务)
sudo service xxx restart (重启某个服务)
sudo service xxx stop (停止某个服务)
sudo service xxx status (查看某个服务的运行状态)
journalctl -fu xxx (查看程序的输出)
```
