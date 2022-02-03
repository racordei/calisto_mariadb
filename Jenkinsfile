pipeline {
  
  agent {
    label "linux"
  }

  environment {
    // exemplos 
    tag = ""
    imageName = ""
    mode = ""
    project = "calisto"
  }
  
  stages {
    stage("Git Hash") {
      steps {
        script {
          echo "Git Hash"
          sh "git rev-parse --short HEAD > commit-id"
          tag = readFile('commit-id').replace("\n", "").replace("\r", "")
          echo "Git Hash $tag"
          imageName = "calisto/mariadb:$tag"
          echo "Image name $imageName"
        }
      }
    }
    
    stage("Test") {
      steps {
        script {
          echo "Testing message only..."
          if (env.BRANCH_NAME == 'master') {
            mode = ''
          } else if (env.BRANCH_NAME == 'develop') {
            mode = '.dev'
          }
        }
      }
    }

    stage("Deploy") {
      steps {
        sh "docker container stop calisto_mariadb${mode}"
        sh "docker container rm calisto_mariadb${mode}"
        sh "docker image rm calisto/mariadb${mode}"
        sh "docker-compose --env-file .env${mode} -p calisto${mode} -f docker-compose${mode}.yml up --build --detach"
      }
    }
  }
}
