pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                // Pulls the code you just uploaded to GitHub
                git branch: 'main', url: 'https://github.com/shravanir430-create/AssessmentTask2-UI.git'
            }
        }

        stage('Build & Test') {
            steps {
                // 'mvn clean test -U' ensures a fresh build and forced dependency update
                bat 'mvn clean test -U'
            }
        }
    }

    post {
        always {
            // This ensures the HTML report is accessible in Jenkins after the run
            publishHTML(target: [
                allowMissing: false,
                alwaysLinkToLastBuild: true,
                keepAll: true,
                reportDir: 'target',
                reportFiles: 'cucumber-reports.html',
                reportName: 'Automation Test Report'
            ])
        }
    }
}
