node {
    stage('static analyser') {
        def groovyfile = load("atom.groovy")
    }

    stage('UT coverage') {
        try {
            groovyfile.building()
            //sh 'make make_executable'
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
