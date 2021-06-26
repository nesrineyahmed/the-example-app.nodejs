pipeline {
    agent {
        docker { image 'timbru31/node-alpine-git' }
    }

    stages {
        stage ("gg") {
            steps{
                sh "ls /gg"
            }
        }
            
        stage ("Install dependenciess"){
            steps{
                echo "installing dependencies"
                sh "npm install"
            }
        }
        stage ("Deploy"){
            steps{
                echo "start project"
                sh "npm run start:dev &"
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
