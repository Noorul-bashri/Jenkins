pipeline{
    agent any
        tools{
            jdk 'JDK 17'
            maven 'Maven'
        }
        stages{
            stage('Build Maven'){
                steps{
                    checkout scmGit(branches: [[name: '*/master']], extensions: [], userRemoteConfigs: [[url: 'https://github.com/Noorul-bashri/Jenkins']])
                    bat 'mvn clean install'
                }
            }
           
        }
}