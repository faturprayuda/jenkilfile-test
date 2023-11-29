pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                script {
                    echo 'Building Image..'
                    sh 'export PATH=C:/Program Files/Docker/Docker && docker build -t faturprayuda/hello-world .'
                    echo 'Success Create Image'
                    sh 'docker push faturprayuda/hello-world'
                    echo 'Success Push Image'
                }
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