node {
    
    stage('checkout') {
       sh 'echo "cloning repo" '
       git branch: 'main', url: 'https://github.com/saiveerateja2000/jenkins_demo.git'
    }

    stage('Testing') {
       sh 'echo "testing is done" '
    }
    
    stage('Building') {
            sh 'echo "Building application"'
    }
    
    stage('Deploying') {
            sh 'echo "Deploying application to aws"'
    } 

}
