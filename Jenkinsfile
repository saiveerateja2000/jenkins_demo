node {
    stage('static analyser') {
        groovyfile = load('atom.groovy')
    }

    stage('UT coverage') {
        try {
            currentBuild.result = 'SUCCESS'
        } catch(e) {
            currentBuild.result = 'ABORTED'
        }
    }

    if (currentBuild.result == 'SUCCESS') {
        stage('Build') {
            groovyfile.building()
        }
    } else {
        sh 'echo "hello"'
    }
}
