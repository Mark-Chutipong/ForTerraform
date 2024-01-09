pipeline {
    agent {
<<<<<<< HEAD
        docker { image 'hashicorp/terraform:1.6.6' }
=======
        docker { image 'hashicorp/terraform:1.6.4' }
>>>>>>> 86a85fd818dee76b31401d79c03f021e5c67b429
    }
    stages {
        stage('Init') {
            steps {
<<<<<<< HEAD
                sh 'terraform init'
            }
        },
        stage('plan') {
            steps {
                sh 'terraform plan'
=======
                sh 'hashicorp/terraform --version '
>>>>>>> 86a85fd818dee76b31401d79c03f021e5c67b429
            }
        }
    }
}
