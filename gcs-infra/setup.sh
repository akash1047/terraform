#!/bin/bash
set -e

echo "Setup started!" > /tmp/setup.log
echo "Installing docker" >> /tmp/setup.log

# Add Docker's official GPG key:
echo "Adding Docker's official GPG key..." >> /tmp/setup.log
sudo apt update
sudo apt install -y ca-certificates curl
sudo install -m 0755 -d /etc/apt/keyrings
sudo curl -fsSL https://download.docker.com/linux/debian/gpg -o /etc/apt/keyrings/docker.asc
sudo chmod a+r /etc/apt/keyrings/docker.asc

# Add the repository to Apt sources:
echo "Adding Docker's repository to Apt sources..." >> /tmp/setup.log
echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.asc] https://download.docker.com/linux/debian \
  $(. /etc/os-release && echo "$VERSION_CODENAME") stable" | \
  sudo tee /etc/apt/sources.list.d/docker.list > /dev/null

echo "Updating package list..." >> /tmp/setup.log
sudo apt update

# Install the Docker packages
echo "Installing Docker packages..." >> /tmp/setup.log
sudo apt install -y docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin

echo "Docker installation completed!" >> /tmp/setup.log
echo "Setup completed!" >> /tmp/setup.log