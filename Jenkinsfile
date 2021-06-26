pipeline {
    agent {
        docker { image 'node:14-alpine' }
    }

    stages {
                    
        stage ("Install dependenciess"){
            steps{
                sh 'chown -R 127:134 "/.npm"'
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
