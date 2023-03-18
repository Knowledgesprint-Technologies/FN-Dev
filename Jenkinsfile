pipeline {
    agent any 
    parameters {
        choice (
            name : 'ENVIRONMENT',
            choices: ['dev', 'qa'],
            description: 'select environemt to deploy'
        )
    }
    stages {
        stage('dev') {
            when {
                expression {
                    params.ENVIRONMENT == 'dev'
                }
            }
            steps {
                sh "echo you r in dev"
            }
        }
        stage('qa') {
            when {
                expression {
                    params.ENVIRONMENT == 'qa'
                }
            }
            steps {
                sh "echo you r in qa"
            }
        }
    }
}
