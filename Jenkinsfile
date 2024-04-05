node {
    stage('static analyser') {
        //groovyfile = load('atom.groovy')
    }

    stage('UT coverage') {
        try {
            sh 'make make_executable'
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
}
