node {
    stage('checkout') {
        sh 'echo "cloning repo" '
        git branch: 'mallanna', url: 'https://github.com/saiveerateja2000/jenkins_demo.git'
    }

    stage('Testing') {
        sh 'echo "testing is done" '
    }
    
    stage('Scan') {
        sh 'trivy image alpine:latest'
    
    stage('Building') {
            sh 'echo "Building application"'
    }
    
    stage('Deploying') {
            sh 'echo "Deploying application to aws"'
    } 

}
