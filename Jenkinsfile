pipeline {
    agent {
        docker { image 'hashicorp/terraform:1.6-alpine3.19' }
    }
    stages {
        stage('Test') {
            steps {
                sh 'terraform --version'
            }
        }
    }
}