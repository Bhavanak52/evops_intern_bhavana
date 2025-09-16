pipeline {
    agent any
    stages {
        stage('Clone') {
            steps {
                git 'https://github.com/Bhavanak52/devops_intern_bhavana.git'
            }
        }
        stage('Build Docker Image') {
            steps {
                bat 'docker build -t hello-docker .'
            }
        }
        stage('Run Container') {
            steps {
                bat '''
                docker stop hello-app || exit 0
                docker rm hello-app || exit 0
                docker run -d -p 5000:5000 --name hello-app hello-docker
                '''
            }
        }
        stage('Test App') {
            steps {
                bat 'curl http://localhost:5000'
            }
        }
    }
}
