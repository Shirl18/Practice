pipeline {
    agent any

    environment{
        DOCKER = credentials('0418sm')
    }

    stages {
        stage('Build') {
            steps {
                sh 'docker build -t shirlteya/sm_flaskapp'
            }
        }
        stage ('login') {
            steps {
                echo '$DOCKER | docker login -u shirlteya --password-stnd'
            }
        }
        stage ('Push') {
            steps {
                sh 'docker push shirlteya/sm_flaskapp'
            }
        }
}