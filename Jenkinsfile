pipeline {
  agent any

  stages {
    stage('plan') {
      steps {
        sh 'cd terraform'
        sh 'pwd'
        sh 'terraform plan'
      }
    }
  }
}
