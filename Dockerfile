FROM jenkins/jenkins:lts

USER root

# Install curl first
RUN apt-get update && apt-get install -y curl

# Install Node.js (LTS) and npm
RUN curl -fsSL https://deb.nodesource.com/setup_18.x | bash - \
  && apt-get install -y nodejs

# (Optional) Install Docker CLI
RUN apt-get install -y docker.io

USER jenkins


