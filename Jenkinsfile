pipeline {
	agent  any 
   
 stages {
        stage('pull') {
		     steps { 
		                checkout scm	 
			 }
		}
		stage('Build') { 
            steps {
                sh 'mvn clean package '
		sh 'chmod 777 ./target/demo.war' 
		 
            }
        }
	    stage('docker') {
		    steps { 
			    
			    sh ' docker build  .'
		    }
	    }
	 stage('k8s') {
		    steps { 
			    sh 'docker-compose up -d'
		    }
	    }    
    }
}
