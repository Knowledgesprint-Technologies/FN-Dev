pipeline {
    agent any
    parameters {
        gitParameter branchFilter: 'origin/(.*)', defaultValue: 'master', name: 'Test', type: 'PT_Branch'
    }
    stages {
        stage('SCM Checkout') {
            steps {
                dir('/home/ansibleadm/')
                git 'https://github.com/Knowledgesprint-Technologies/FN-Dev.git'
            }
        }
        stage('Deploy to Dev Env') {
            when {
                changeset "refs/remote/origin/${params.BRANCH}"
            }
            steps {
                dir('/home/ansibleadm/FN-Dev') {
                    sh 'ansible-playbook env-configs/dev/playbooks/ansible-dev-deploy.yml'
                }
            }
        }    
        stage('Deploy to QA Env') {
            when {
                anyOf {
                    expression {
                        params.BRANCH != 'master'
                    }
                    not {
                        changeset "refs/remotes/origin/${params.BRANCH}"
                    }
                }
            }
            steps {
                sh "echo you r in qa"
            }
        }
    }
}
