pipeline {
    agent any

    environment {
        AWS_ACCESS_KEY_ID     = credentials('AWS_ACCESS_KEY_ID')
        AWS_SECRET_ACCESS_KEY = credentials('AWS_SECRET_ACCESS_KEY')
        AWS_REGION            = 'us-west-2'
    }

    stages {
        stage("init") {
            steps {
                script {
                    sh 'terraform init'
                }
            }
        }

        stage("plan") {
            steps {
                script {
                    sh 'terraform plan'
                }
            }
        }

        stage("apply") {
            steps {
                script {
                    sh 'terraform apply -auto-approve'
                }
            }
        }
    }

    post {
        always {
            script {
                sh 'terraform destroy -auto-approve'
            }
        }
    }
}
