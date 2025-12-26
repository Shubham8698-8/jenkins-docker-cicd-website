pipeline {
    agent any

    stages {

        stage('Clone Code') {
            steps {
                git url: 'https://github.com/Shubham8698-8/jenkins-docker-cicd-website.git',
                    branch: 'main'
            }
        }

        stage('Build Docker Image') {
            steps {
                sh 'docker build -t devops-website .'
            }
        }

        stage('Stop Old Container') {
            steps {
                sh '''
                docker stop website || true
                docker rm website || true
                '''
            }
        }

        stage('Run New Container') {
            steps {
                sh 'docker run -d -p 80:80 --name website devops-website'
            }
        }
    }

    post {
        success {
            echo '✅ Website deployed successfully'
        }
        failure {
            echo '❌ Deployment failed'
        }
    }
}
