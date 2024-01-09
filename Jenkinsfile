pipeline {
    agent {
        docker { image 'hashicorp/terraform:1.6' }
    }
    stages {
        stage('Test') {
            steps {
                sh 'sudo apt-get install hashicorp/terraform:1.6'
                sh 'terraform --version'
            }
        }
    }
}