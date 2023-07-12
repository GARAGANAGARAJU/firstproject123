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
          sh 'docker login -u AWS -p $(aws ecr get-login-password --region us-east-2) 984581412472.dkr.ecr.us-east-2.amazonaws.com'
          sh 'docker build -t project1851 .'
          sh 'docker tag project1851:latest 984581412472.dkr.ecr.us-east-2.amazonaws.com/project1851:""$Build""'
          sh 'docker push 984581412472.dkr.ecr.us-east-2.amazonaws.com/project1851:""$Build""'
        }
      }
    }
  }
}
