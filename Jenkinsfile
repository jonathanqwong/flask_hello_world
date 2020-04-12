pipeline {
  agent { docker { image 'python:3.7.6' } dockerfile true }
  stages {
    stage('build') {
      steps {
        sh 'echo envVar = $envVar'
        sh 'pip install -r requirements.txt'
      }
    }
    stage('test') {
      steps {
        sh 'python test.py'
      }
      post {
        always {
          junit 'test-reports/*.xml'
        }
      }    
    }
  }
}
