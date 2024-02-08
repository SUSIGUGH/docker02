pipeline{
    agent any
    stages{
        
           stage('Build Docker Image'){
                steps{
       		    sh 'ls -ltr'
                    sh 'pwd'
		    sh 'cd docker02/mysql && docker build -t mysql01 .'

                }
            }
            
        
    }
}
