pipeline {
    agent any

    
    stages {
        stage('Login and Push'){
            steps {
                script{
                    withDockerRegistry(credentialsId: '0418sm') {
                        docker.build('shirlteya/flask').push('latest')
                    }
                }
            }
        }
    }
}