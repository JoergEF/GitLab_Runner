#!/bin/bash
export DEBIAN_FRONTEND=noninteractive

# Python-Module (für Runner...)
sudo apt-get -y install python3-pip python3-venv python3-wheel python3-mypy  python3-flake8 python3-bandit python3-pylint-*

# gitlab-runner auf eigenes Repo pinnen und installieren
cat <<EOF | sudo tee /etc/apt/preferences.d/pin-gitlab-runner.pref
Explanation: Prefer GitLab provided packages over the Debian native ones
Package: gitlab-runner
Pin: origin packages.gitlab.com
Pin-Priority: 1001
EOF
curl -L "https://packages.gitlab.com/install/repositories/runner/gitlab-runner/script.deb.sh" | sudo bash
sudo apt-get -y install gitlab-runner 

# Namensauflösung
sudo cp /vagrant/scripts/hosts /etc

# Docker-Rechte
sudo adduser gitlab-runner docker

# Gitlab - Zertifikat importieren
openssl s_client -showcerts -connect gitlab:443 < /dev/null 2>/dev/null | openssl x509 -outform PEM > /etc/gitlab-runner/certs/gitlab.crt
