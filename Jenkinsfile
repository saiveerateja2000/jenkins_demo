node {
    stage('static analyser') {
        script {
            def rootDir = pwd()
            def groovyfile = load '${rootDir}/atom.groovy'
        }
    }

    stage('UT coverage') {
        try {
            groovyfile.building()
            
            currentBuild.result = 'SUCCESS'
        } catch(e) {
            currentBuild.result = 'ABORTED'
        }
    }

    if (currentBuild.result == 'SUCCESS') {
        stage('success') {
            sh 'echo "succeded"'
        }
    } else {
        sh 'echo "failed"'
    }
    post {
        always {
            echo 'Post-build actions executed regardless of build result'
            // Additional post-build actions to be executed always
        }
    }
}
