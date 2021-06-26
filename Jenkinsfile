pipeline {
    agent {
        docker { dockerfile true }
    }

    stages {
                    
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
