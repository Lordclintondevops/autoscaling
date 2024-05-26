pipeline {
    agent {
        label 'slave'
    }
    
    stages{
        stage{
            steps('Checkout'){
                git branch: 'main', url: 'https://github.com/Lordclintondevops/autoscaling.git'
            }
        }
          stage{
            steps('Terraform Init'){
                sh 'terraform init'
            }
        }
           stage{
            steps('Terraform Plan'){
                sh 'terraform plan'
            }
        }
           stage{
            steps('Terraform Apply -auto-approve'){
                sh 'terraform apply -auto-approve'
            }
        }
           stage{
            steps('Sleep'){
                sleep(120)
            }
        }
           stage{
            steps('Terraform destroy -auto-approve'){
                sh 'terraform destroy -auto-approve'
            }
        }
    }
}