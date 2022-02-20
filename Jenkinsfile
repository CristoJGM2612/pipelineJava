pipeline {
    agent any

    stages {
        stage('Test Junit') {
            steps {
                sh 'mvn clean test'
            }
        }
        stage('Build') {
            steps {
                sh 'mvn clean package'
                sh 'mvn clean install'
            }
        }
        stage('Deploy') {
            steps {
                sh 'docker build -t app-web-demo .'
                sh 'docker run -d -p 8091:8080 app-web-demo '
            }
        }
        stage('Test Integration') {
            steps {
                sh 'wget localhost:8091/app-web-demo'       
                sh 'grep -i Cristo app-web-demo'
                    
            }
        }
    }
}