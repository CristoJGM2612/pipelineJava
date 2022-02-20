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
            }
        }
        stage('Deploy') {
            steps {
                sh 'docker build -t hello-world-java-tomcat .'
                sh 'docker run -d --rm -p 8091:8080 hello-world-java-tomcat '
            }
        }
        stage('Test Integration') {
            steps {
                sh 'grep Cristo | wget http://localhost:8091/app-web-demo'
                    
            }
        }
    }
}