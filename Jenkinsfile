pipeline {
    agent {
        label 'jenkins-slave'
    }
    
    stages {
        stage('Checkout') {
            steps {
                git branch: 'main', url: 'https://github.com/Lordclintondevops/autoscaling.git'
            }
        }
        
        stage('Terraform Init') {
            steps {
                sh 'terraform init'
            }
        }
        
        stage('Terraform Plan') {
            steps {
                sh 'terraform plan'
            }
        }
        
        stage('Terraform Apply -auto-approve') {
            steps {
                sh 'terraform apply -auto-approve'
            }
        }
        
        stage('Sleep') {
            steps {
                sleep(time: 120, unit: 'SECONDS')
            }
        }
        
        stage('Terraform destroy -auto-approve') {
            steps {
                sh 'terraform destroy -auto-approve'
            }
        }
    }
}
