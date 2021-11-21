pipeline {
    agent { dockerfile true }


    stages {
        stage ("app clone"){
            steps{
                echo "cloning app"
                sh "git clone https://github.com/nesrineyahmed/the-example-app.nodejs.git"
            }
        }
        stage ("Install dependenciess"){
            steps{
                sh "pwd"
                echo "installing dependencies"
                sh "cd the-example-app.nodejs/ && npm install"
            }
        }
        stage ("Deploy"){
            steps{
                echo "start project"
                sh "cd the-example-app.nodejs/ && npm run start:dev &"
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
