#!/bin/sh
sudo cp start.sh /opt/mc/sh/
sudo cp stop.sh /opt/mc/sh/
sudo cp save.sh /opt/mc/sh/
sudo chmod +x /opt/mc/sh/start.sh
sudo chmod +x /opt/mc/sh/stop.sh
sudo chmod +x /opt/mc/sh/save.sh
sudo chmod +x /opt/mc/server/mc_server_1.17.1.jar

sudo chown -R minecraft:minecraft /opt/

sudo cp mc1.17.1-restart.service /usr/lib/systemd/system/
sudo cp mc1.17.1-restart.timer /usr/lib/systemd/system/
sudo cp mc1.17.1-save.service /usr/lib/systemd/system/
sudo cp mc1.17.1-save.timer /usr/lib/systemd/system/
sudo cp mc1.17.1.service /usr/lib/systemd/system/
sudo chown minecraft:minecraft /opt/
sudo systemctl enable mc1.17.1-restart.service
sudo systemctl enable --now mc1.17.1-restart.timer
sudo systemctl enable mc1.17.1-save.service
sudo systemctl enable --now mc1.17.1-save.timer
sudo systemctl enable --now mc1.17.1.service
