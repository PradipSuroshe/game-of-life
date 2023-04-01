pipeline {
	agent any
	tools {
		maven "Maven"
	}
	
	stages {
		stage ("build_git") {
			steps {
				git 'https://github.com/Pradip8498/game-of-life.git'
			}	
		}
		stage ("build_maven") {
			steps {
				sh "mvn package"                
      }
		}
		stage ("build_docker") {
			steps {
				sh "docker build -t my-tomcatImage ."                
            }
		}
		stage ("run_docker_container_JM") {
			steps {
				sh "docker run -d -p 8081:8080 my-tomcatImage"                
      }
		}
	}
}
