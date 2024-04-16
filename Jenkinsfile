node {
    stage('static analyser') {
        script {
            def groovyfile = load 'atom.groovy'
        }
    }

    stage('UT coverage') {
        try {
            groovyfile.building()
            
            //currentBuild.result = 'SUCCESS'
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
}
