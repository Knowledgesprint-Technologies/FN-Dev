pipeline {
    agent any
    parameters { choice(name: 'environment', choices: ['dev', 'qa'], description: 'choose environment to deploy') }
    stages {
        stage('Execution of playbook')
        {
            when { 
                    expression { params.environment == 'dev' }
            steps {
                echo 'Hello World'
            }
                } 
            when { 
                    expression { params.environment == 'qa' }
            steps {
                echo 'Welocme to India'
            }
        }
    }
}
}
