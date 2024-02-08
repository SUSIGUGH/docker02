pipeline{
    agent any
    stages{
        
           stage('Build Docker Image'){
                steps{
       		    sh 'ls -ltr'
                    sh 'pwd'
		    sh 'cd mysql && docker build -t mysql01 .'
		    sh 'docker image tag mysql01 susigugh/mysql01:v1'

                }
            }
            


          stage('Push Docker Image to Docker Hub'){
                steps{
                    sh 'docker login -u=susigugh -p=UniBall@2528 && docker push susigugh/mysql01:v1'

                }
            }


       stage('AWS Terraform Implementation '){
                steps{
                    sh 'cd tf && terraform apply --auto-approve && terraform destroy --auto-approve'

                }
            }



        
    }
}
