pipeline {
agent any
stages {
  
stage ("List Files") {
  steps {
sh 'pwd'
sh 'ls -ltr'
sh 'cd ~/terraform && terraform plan'
sh 'cd ~/terraform && terraform apply -auto-approve'
  }
}
 
 
}
}
