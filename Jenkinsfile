pipeline {
    agent any

    
    stages {
        stage('Login and Push'){
            steps {
                script{
                    withDockerRegistry(credentialsId: 'shirl18') {
                        docker.build('shirlteya/flask').push('latest')
                    }
                }
            }
        }
    }
}