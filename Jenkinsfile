pipeline {
    agent any
    stages {
        stage('build') {
            steps {
                sh 'ruby --version'
                echo "hurray we did it"
                echo"we are currently in the Build stage"
            }
        }
        stage('test'){
            steps{
                echo"we are currently in the test stage"
            }
        }
    }
}
