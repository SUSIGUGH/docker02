pipeline{
    agent any
    stages{
        
           stage('Build Docker Image'){
                steps{
       		    sh 'ls -ltr'
                    sh 'pwd'
		    sh 'cd php && docker build -t phppr .'
		    sh 'docker image tag phppr susigugh/phppr:v1'

                }
            }
            


          stage('Push Docker Image to Docker Hub'){
                steps{
                    sh 'docker login -u=susigugh -p=UniBall@2528 && docker push susigugh/phppr:v1'

                }
            }


//       stage('AWS Terraform Implementation '){
  //              steps{
    //                sh 'cd tf && terraform init && terraform apply --auto-approve && terraform destroy --auto-approve'
//
  //              }
    //        }

 stage('Kubernetes Implementation '){
                steps{
		    sh 'chmod 600 jmtksrv01.pem' 
                    sh 'scp -i jmtksrv01.pem -o StrictHostKeyChecking=no rep01.yaml service.yaml ec2-user@3.111.198.178:/home/ec2-user/'
		    // sh 'ssh -i jmtksrv01.pem -o StrictHostKeyChecking=no ec2-user@3.111.198.178 "kubectl delete -f service.yaml"'
		    // sh 'ssh -i jmtksrv01.pem -o StrictHostKeyChecking=no ec2-user@3.111.198.178 "kubectl delete -f rep01.yaml"'
		    sh 'ssh -i jmtksrv01.pem -o StrictHostKeyChecking=no ec2-user@3.111.198.178 "kubectl create -f service.yaml"'
		    sh 'ssh -i jmtksrv01.pem -o StrictHostKeyChecking=no ec2-user@3.111.198.178 "kubectl create -f rep01.yaml"'
		    sh 'ssh -i jmtksrv01.pem -o StrictHostKeyChecking=no ec2-user@3.111.198.178 "nohup kubectl port-forward --address 0.0.0.0 services/php-srv 30880:80 -n dev &"'

                }
            }


        
    }
}
