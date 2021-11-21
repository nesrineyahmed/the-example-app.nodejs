pipeline {
    agent { dockerfile true }


    stages {
        stage ("app clone"){
            steps{
                echo "cloning app"
                sh "git clone https://github.com/nesrineyahmed/the-example-app.nodejs.git"
                sh "cd the-example-app.nodejs/"
            }
        stage ("Install dependenciess"){
            steps{
                sh "pwd"
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
