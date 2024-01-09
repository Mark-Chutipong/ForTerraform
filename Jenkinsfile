pipeline {
    agent {
        docker { image 'hashicorp/terraform:1.6' }
    }
    stages {
        stage('Test') {
            steps {
                sh 'hashicorp/terraform --version'
            }
        }
    }
}