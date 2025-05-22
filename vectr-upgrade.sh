
# Safely shut down VECTR
cd /opt/vectr && sudo docker compose down

# Download the latest .zip release package via your browser
# https://github.com/SecurityRiskAdvisors/VECTR/releases
# e.g., sra-vectr-runtime-9.8.3-ce.zip

# Extract, optionally inspect docker-compose.yml
unzip ~/Downloads/sra-vectr-runtime-9.8.3-ce.zip
cat docker-compose.yml

# Move the new docker file to your VECTR install directory, and deploy
sudo mv ./docker-compose.yml /opt/vectr
sudo docker compose up -d