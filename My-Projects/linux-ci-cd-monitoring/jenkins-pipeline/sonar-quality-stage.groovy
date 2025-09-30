// Sonar quality gate stage example
stage('Sonar Quality Gate') {
  steps {
    script {
      def qg = waitForQualityGate()
      if (qg.status != 'OK') {
        error "Pipeline aborted due to quality gate failure: ${qg.status}"
      }
    }
  }
}
