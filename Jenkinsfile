pipeline {
    agent {
        docker { image 'hashicorp/terraform:1.6' }
    }
    stages {
        stage('Test') {
            steps {
                sh 'install hashicorp/terraform:1.6'
                sh 'terraform --version'
            }
        }
    }
}