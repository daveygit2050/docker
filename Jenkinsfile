pipeline {
  agent any

  stages {
    stage('plan') {
      steps {
        sh 'terraform plan terraform'
      }
    }
  }
}
