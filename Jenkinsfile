pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                echo 'Building Image..'
                sh 'docker build . -f Dockerfile -t faturprayuda/hello-world'
                echo 'Success Create Image'
                sh 'docker push faturprayuda/hello-world'
                echo 'Success Push Image'
            }
        }
        stage('Test') {
            steps {
                echo 'Testing..'
            }
        }
        stage('Deploy') {
            steps{
                echo 'Deploying....'
            }
        }
    }
}