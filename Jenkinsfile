pipeline {
    agent any
    environment {
        TARGET_SERVER = "ec2-user@10.0.0.5"
    }

    stages {
        stage("Build") {
            steps {
                echo "Installing dependencies... (simulated)"
                echo "Building application... (simulated)"
            }
        }

        stage("Deploy") {
            steps {
                sshagent(['ssh-cred-id']) {
                    echo "Simulating deployment to ${TARGET_SERVER}"
                }
            }
        }
    }

    post {
        success {
            echo "Sending success email notification... (simulated)"
        }
        failure {
            echo "Sending failure email notification... (simulated)"
        }
    }
}
