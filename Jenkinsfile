pipeline {
    agent { 
        docker { image "docker:dind"
                 args  "--entrypoint='' --privileged"}
    }

    stages {
        
        
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
