
#create service

sudo nano /etc/systemd/system/autoupdates.service

sudo nano /etc/systemd/system/autoupdates.timer


 

sudo systemctl start autoupdates.timer

sudo journalctl -u autoupdates.service -f
