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
                branch 'dev'
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
                branch 'qa'
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
