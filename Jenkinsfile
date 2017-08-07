pipeline {
  agent any

  stages {
    stage('plan') {
      steps {
        sh 'cd terraform'
        sh 'terraform plan'
      }
    }
  }
}
