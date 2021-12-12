pipeline {
  
  agent {
    label "windows"
  }
  
  stages {
    
    stage("Test") {
      
      steps {
        withCredentials([usernamePassword(credentialsId: 'mygithub', usernameVariable: 'USERNAME', passwordVariable: 'PASSWORD')]) {
          // available as an env variable, but will be masked if you try to print it out any which way
          // note: single quotes prevent Groovy interpolation; expansion is by Bourne Shell, which is what you want
          bat 'echo $PASSWORD'
          // also available as a Groovy variable
          echo USERNAME
          // or inside double quotes for string interpolation
          echo "username is $USERNAME"
        }
      }
    }
  }
}
