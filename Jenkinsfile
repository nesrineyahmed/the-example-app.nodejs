pipeline {
    agent { 
        docker { image "docker:dind" }
    }

    stages {
        stage ("entrypoint"){
            steps{
                sh "nohup /usr/local/bin/dockerd-entrypoint.sh &"
            }
        }
        
        stage ("docker build"){
            steps{
                sh "docker build -t duh ."
            }
        }
        
        stage ("run image"){
            steps{                
                sh "docker run --name nodeapp -it -d -p 3000:3000 duh"
            }
        }
        
        stage ("Test"){
            steps{
                echo "verify"
                sh "curl http://localhost:3000"
            }
        }

    }

}
