pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                sh 'docker build -t shirlteya/sm_flaskapp'
            }
        }
    }
}