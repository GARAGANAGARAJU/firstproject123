pipeline {
  agent any   
  stages {
    stage ('Build') {
      steps {
        sh 'printenv'
        
      }
    }
    stage ('Publish ECR') {
      steps {
        withEnv (["AWS_ACCESS_KEY_ID=${env.AWS_ACCESS_KEY_ID}", "AWS_SECRET_ACCESS_KEY=${env.AWS_SECRET_ACCESS_KEY}", "AWS_DEFAULT_REGION=${env.AWS_DEFAULT_REGION}"]) {
          sh 'aws ecr-public get-login-password --region us-east-1 | docker login --username AWS --password-stdin public.ecr.aws/o2e7j5d1'
          sh 'docker build -t project1851 .'
          sh 'docker tag project1851:latest public.ecr.aws/o2e7j5d1/project1851:""Build""'
          sh 'docker push public.ecr.aws/o2e7j5d1/project1851:""Build""'
        }
      }
    }
  }
}
