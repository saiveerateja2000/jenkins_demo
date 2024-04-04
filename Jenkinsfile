node {
    stage('static analyser') {
        //groovyfile = load('atom.groovy')
    }

    stage('UT coverage') {
        try {
            sh 'chmod +x unit.sh'
            sh './unit.sh'
            currentBuild.result = 'SUCCESS'
        } catch(e) {
            currentBuild.result = 'ABORTED'
        }
    }

    if (currentBuild.result == 'SUCCESS') {
        stage('Build') {
            sh 'echo "hello world"'
        }
    } else {
        sh 'echo "hello"'
    }
}
