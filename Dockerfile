FROM jenkins/jenkins:lts

USER root

# Install Node.js (LTS) and npm
RUN curl -fsSL https://deb.nodesource.com/setup_18.x | bash - \
  && apt-get install -y nodejs \
  && npm install -g npm

# Install Docker CLI inside Jenkins (optional but useful)
RUN apt-get update && apt-get install -y docker.io

# Switch back to Jenkins user
USER jenkins
