pipeline {
    agent {
        docker {
            image 'hashicorp/terraform:1.2.0'
            args  '--entrypoint="" -u root -v /opt/jenkins/.aws:/root/.aws -v /tmp:/root/'
        }
    }
}