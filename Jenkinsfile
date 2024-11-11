pipeline {
    agent any
    environment {
        // Docker image name and tag
        IMAGE_NAME = 'javaapp'
        IMAGE_TAG = 'latest'
    }
    stages {
        stage('Checkout') {
            steps {
                // Checkout code from the source repository
                git 'https://github.com/sandeepdhamal/javaapp'
            }
        }
        
        stage('Build with Maven') {
            steps {
                // Use Maven to build the project
                sh 'mvn clean package -DskipTests'
            }
        }
        
        stage('Build Docker Image') {
            steps {
                script {
                    // Build the Docker image using the Dockerfile in the project
                    docker.build("${IMAGE_NAME}:${IMAGE_TAG}")
                }
            }
        }
        
        stage('Push Docker Image') {
            steps {
                script {
                    // Log in to Docker Hub (or any other Docker registry)
                    docker.withRegistry('https://index.docker.io/v1/', 'docker-hub-credentials') {
                        docker.image("${IMAGE_NAME}:${IMAGE_TAG}").push()
                    }
                }
            }
        }
    }
    post {
        always {
            // Clean up after build
            sh 'docker rmi ${IMAGE_NAME}:${IMAGE_TAG} || true'
            sh 'mvn clean'
        }
    }
}
