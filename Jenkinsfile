pipeline {
  
  agent {
    label "windows"
  }
  
  stages {
    
    stage("Test") {
      
      steps {
        bat 'wsl.exe -d Ubuntu-20.04'
      }
    }
  }
}
