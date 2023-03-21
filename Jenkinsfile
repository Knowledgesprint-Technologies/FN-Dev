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
        stage('branch name') {
            steps {
                sh "echo $(BRANCH_NAME)"
            }
        }
        stage('dev') {
            when {
                branch 'dev'
                expression {
                    params.ENVIRONMENT == 'dev'
                    return env.BRANCH_NAME == 'dev'
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
                    return env.BRANCH_NAME == 'qa'
                }
            }
            steps {
                sh "echo you r in qa"
            }
        }
    }
}
