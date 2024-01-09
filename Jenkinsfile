pipeline {
    agent {
        docker { image 'hashicorp/terraform:1.6.6' }
    }
    stages {
        stage('Init') {
            steps {
                sh 'terraform init'
            }
        },
        stage('plan') {
            steps {
                sh 'terraform plan'
            }
        }
    }
}
