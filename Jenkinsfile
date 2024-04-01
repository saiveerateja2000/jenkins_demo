pipeline {
    agent any
    
    stages {
        stage('Build') {
            steps {
                // Compile code, run build scripts, etc.
                sh 'echo "building is going on"'
            }
        }
        
        stage('Test') {
            steps {
                // Run unit tests
                sh 'echo "testing is going on"'
            }
        }
        
        stage('Deploy') {
            steps {
                // Deploy the application (e.g., to a server)
                sh 'echo "deployment is going on"'
            }
        }
    }
    
    post {
        success {
            // Send notification if the pipeline succeeds
            echo 'Pipeline succeeded!'
        }
        failure {
            // Send notification if the pipeline fails
            echo 'Pipeline failed!'
        }
    }
}
