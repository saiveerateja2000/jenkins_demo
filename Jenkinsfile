node {
    stage('static analyser') {
        groovyfile = load('atom.groovy')
    }

    stage('UT coverage') {
        try {
            chmod +x unit.sh
            ./unit.sh
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
