pipeline {
  agent { docker { image 'bovice/sample-ruby:1.0' } }
    stage('build') {
      steps {
        sh 'bundle install'
      }
    }
    stage('test') {
      steps {
        sh 'rails test'
      }   
    }
  }
}