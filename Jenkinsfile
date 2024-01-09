pipeline {
    agent {
        docker { image 'node:20.10.0-hashicorp/terraform:1.6' }
    }
    stages {
        stage('Test') {
            steps {
                sh 'node --version'
            }
        }
    }
}