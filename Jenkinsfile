pipeline
{
    agent any
    stages
    {
        stage('Git Connect')
        {
            steps
            {
                echo "Welcome to Jenkins"
                sh 'rm -Rf docker02'
                sh 'touch a.txt'
                sh 'git clone https://github.com/SUSIGUGH/docker02.git'
                sh 'ls -ltr'
                sh 'ls -ltr docker02'
                sh 'echo "<h1> Welcome</h1>" > ./docker02/index.html'
            }
        }
        
        stage('Docker Build')
        {
            steps
            {
               sh 'cd docker02 && docker build -t httpd .' 
     //          sh 'docker stop httpd01'
       //        sh 'docker rm httpd01'
               sh 'docker run -dit --name httpd01 -p80:80 httpd'
            }
        }
        
        
    }
}
