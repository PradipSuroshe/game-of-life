pipeline {
	agent any
	environment {
		PATH ="/user/bin:$PATH"   
	}
	stages {
		stage ("build_git") {
			steps {
				git 'https://github.com/Pradip8498/game-of-life.git'
			}	
		}
		stage ("build_maven") {
			steps {
				sh "mvn clean install"                
          		  }
		            
      		}
		stage ("build_docker") {
			steps {
				sh "docker build -t my-tomcatimage ."                
            }
		}
		stage ("run_docker_container_JM") {
			steps {
				sh "docker run -d -p 8081:8080 my-tomcatimage"                
      }
		}
	}
}
