pipeline {
  agent any

  stages {
    stage('Install Dependencies') {
      steps {
        sh 'npm install'
      }
    }

    stage('Run Tests') {
      steps {
        sh 'npm test'
      }
    }

    stage('Build Docker Image') {
      steps {
        sh 'docker build -t node-jenkins-app .'
      }
    }

    stage('Push Docker Image') {
      when {
        expression { return false } // You can change this if you have Docker Hub credentials
      }
      steps {
        echo 'Skipping image push (no credentials configured)'
      }
    }

    stage('Clean Up') {
      steps {
        sh 'docker rmi node-jenkins-app || true'
      }
    }
  }
}
