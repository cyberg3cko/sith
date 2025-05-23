# Struggling to launch VECTR? Run `sudo docker ps`, `sudo docker stop {containerID}` (or `sudo docker stop $(docker ps -a -q)`) and `sudo docker system prune` and try again.
cd /opt/vectr
sudo docker compose up -d
