pipeline {
    agent any

    environment {
        AWS_ACCESS_KEY_ID     = credentials('aws-access-key')
        AWS_SECRET_ACCESS_KEY = credentials('aws-secret-key')
        AWS_DEFAULT_REGION    = 'ap-south-1'
    }
    
parameters {
        string(name: 'RUN_STAGE', defaultValue: 'all', description: 'Enter the stage to run (e.g.apply or destroy)')
    }
    stages {
        stage('Checkout Code') {
            steps {
                git 'https://github.com/mohansgithub/terraform_pipelines.git'
            }
        }

        stage('Terraform Init') {
            steps {
                bat 'terraform init'
            }
        }

        stage('Terraform Plan') {
            steps {
                bat 'terraform plan -out=tfplan'
            }
        }

        
        stage('Terraform Apply') {
            when {
                expression { params.RUN_STAGE == 'apply' || params.RUN_STAGE == 'all' }
            }
            steps {
                bat 'terraform apply -auto-approve tfplan'
            }
        }

        stage('Terraform Destroy') {
            when {
                expression { params.RUN_STAGE == 'destroy' || params.RUN_STAGE == 'all' }
            }
            steps {
                bat 'terraform destroy -auto-approve'
            }
        }
    }
}
