pipeline {
    agent {
            label 'Ansible-Master'  
    }
    stages {
        stage('Execution of Playbook') {
            steps {
                dir('/home/ansibleadm/FN-Dev') {
                    sh 'ansible-playbook test.yml'
                }
            }
        }
    }
}
