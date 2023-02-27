pipeline {
    agent any

    
    stages {
        stage('Login and Push'){
            steps {
                script{
                    //sign into docker, build image, and push image to dockerhub
                    withDockerRegistry(credentialsId: 'shirl18') {
                        docker.build('shirlteya/flask').push('latest')
                    }
                }
            }
        }
        stage('AWS Commands') {
            steps {
                script {
                    //sign into AWS
                    withAWS(credentials: 'smjenkins', region: 'us-east-1'){
                        sh 'aws sts get-caller-identity'
                    }
                }
            }
        }
        stage('Kubernetes login'){
            steps{
                script{
                    //same for all in the class
                    withAWS(credentials: 'smjenkins', region: 'us-east-1') {
                        sh 'aws eks update-kubeconfig --region us-east-1 --name VETTEC'
                    }
                }
            }
        }
        stage('Create Namespace'){
            steps {
                script {
                    withAWS(credentials: 'smjenkins', region: 'us-east-1') {
                     try {
                        sh 'kubectl apply -f manifest.yaml'
                    } catch (Exception e) {
                        echo 'Exception occured: ' + e.toString()
                        echo 'Handled the Exception'
                    }  
                } 
            }
        }
    }
}
