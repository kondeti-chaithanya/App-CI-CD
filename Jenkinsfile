pipeline {
    agent any
    environment {
        TARGET_SERVER = "ec2-user@10.0.0.5"
    }

    stages {
        stage("Build") {
            steps {
                sh "npm install"
                sh "npm run build"
            }
        }

        stage("Deploy") {
            steps {
                sshagent(['ssh-cred-id']) {
                    sh """
                    scp -r build/* ${TARGET_SERVER}:/tmp/build/
                    ssh ${TARGET_SERVER} 'bash /opt/scripts/deploy.sh'
                    """
                }
            }
        }
    }

  post {
    success {
        mail(
            to: "kchaithanyakumar123@gmail.com",
            subject: "Build Success",
            body: "Deploy Success",
            from: "jenkins@test.com"
        )
    }
    failure {
        mail(
            to: "kchaithanyakumar123@gmail.com",
            subject: "Build Failed",
            body: "Deploy Failed",
            from: "jenkins@test.com"
        )
    }
}
