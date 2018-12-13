node {
  def app

  stage('Clone') {
    checkout scm
  }
  stage('Build image') {
    app = docker.build('varshard/example-app')
  }
  stage('Push image') {
    // Use credentail from 'docker-hub-credentials'
    docker.withRegistry('https://registry.hub.docker.com', 'docker-hub-credentials') {
      app.push('latest')
    }
  }
}