pipeline {
    agent {
        docker { 
            image 'hashicorp/terraform:1.6.6'
            args "--entrypoint=''"
        }
    }
    // options {
    //     ansiColor('xterm')
    // }
    stages {
        stage('Init') {
            steps {
                sh 'terraform init'
            }
        }
        stage('plan') {
            steps {
                sh 'terraform plan'
            }
        }
    }
    post {
        success {
            echo "Release Success"
        }
        failure {
            echo "Release Failed"
        }
        cleanup {
            echo "Clean up in post work space"
            cleanWs()
        }
    }
}
