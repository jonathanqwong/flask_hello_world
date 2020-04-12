pipeline {
  agent { docker { image 'python:3.7.6' } dockerfile true }
  stages {
    stage('Docker test') {
      agent {
        docker {
          label 'docker'
        }
      }
    }
    stage('build') {
      steps {
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
