FROM jenkins/jenkins:lts

USER root

# Install Node.js (LTS), npm, Docker CLI, and git (optional but useful)
RUN apt-get update && apt-get install -y curl gnupg \
  && curl -fsSL https://deb.nodesource.com/setup_18.x | bash - \
  && apt-get install -y nodejs docker.io git \
  && npm install -g npm

USER jenkins

