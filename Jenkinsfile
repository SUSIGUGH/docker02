pipeline {
agent any
stages {
  
stage ("List Files") {
  steps {
sh 'pwd'
sh 'ls -ltr'
  }
}
  
  stage ("Build Nodejs Image") {
    steps {
      sh 'sudo docker build -t nodejs .'
      sh 'sudo docker ps'
    }
  }
  
  stage ("Delivery of Image to Docker Hub") {
    steps {
      sh 'sudo docker image tag nodejs susigugh/nodejs:1.0'
      sh 'sudo docker push susigugh/nodejs:1.0'
    }
  }
  
 
}
}

