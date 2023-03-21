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
                    return env.BRANCH_NAME == 'origin/dev'
                }
            }
            steps {
                sh "echo you are in dev"
            }
        }
        stage('qa') {
            when {
                branch 'qa'
                expression {
                    params.ENVIRONMENT == 'qa'
                    return env.BRANCH_NAME == 'origin/qa'
                }
            }
            steps {
                sh "echo you r in qa"
            }
        }
    }
}
