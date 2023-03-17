pipeline {
    agent {
            label 'Ansible-Master'  
   }
    parameters { choice(name: 'environment', choices: ['dev', 'qa'], description: 'choose environment to deploy') }
    stages {
        stage('Execution of Playbook') {
            steps {
                dir('/home/ansibleadm/FN-Dev') {
                    sh 'ansible-playbook test.yml'
                }
            }
        }
        stage('Execution of Playbook') {
            when { environment name: 'environment', value: 'qa' }
            steps {
                dir('/home/ansibleadm/FN-Dev') {
                    sh 'echo "hello world"'
                }
            }
        }
    } 
}
