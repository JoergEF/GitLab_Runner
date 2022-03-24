# GitLab Runner (standalone, mit Docker)

Ein Demoprojekt innerhalb dessen mittels

  1. Vagrant
  2. Virtualbox
  3. Docker
  4. GitLab Runner
  
eine fertige Umgebung als IaC zur Verfügung gestellt wird.

## Benutzung

### gemeinsame Voraussetzung

  1. Gitlab installieren (https://github.com/JoergEF/Gitlab_docker_standalone.git)

### Voraussetzungen (Windows)

  1. chocolatey installieren (https://chocolatey.org/install#individual)
  2. choco install make
  3. choco install vagrant

### Voraussetzungen (Ubuntu/Debian)

  1. apt update
  2. apt install build-essential vagrant

```bash
git clone https://github.com/JoergEF/GitLab_Runner
cd GitLab_Runner
make
```


