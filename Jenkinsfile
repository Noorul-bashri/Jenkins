pipeline {
    agent any
    tools {
        jdk 'JDK17'
        maven 'Maven'
    }
    stages {
        stage('Build Maven') {
            steps {
                bat 'mvn clean install'
            }
        }

        stage('Build Docker Image') {
            steps {
                script {
                    bat 'docker build -t noorul241/dockersample .'
                }
            }
        }

        stage('Push Image to DockerHub') {
            steps {
                script {
withCredentials([usernamePassword(credentialsId: 'DOCKER_HUB', passwordVariable: 'DOCKER_PASSWORD', usernameVariable: 'DOCKER_USER')]){
                    bat 'docker login -u %DOCKER_USER% -p %DOCKER_PASSWORD%'
                    bat 'docker push noorul241/dockersample'
}
    
                }
            }
        }
    }
}