node {
    def app1, app2

    stage('Clone repository') {
        /* Let's make sure we have the repository cloned to our workspace */

        checkout scm
    }

    stage('Build image') {
        /* This builds the actual image; synonymous to
         * docker build on the command line */
        app1 = docker.build("nik0904/myclient1","./client/")
        app2 = docker.build("nik0904/myserver1","./server/")
    }
    
    stage('Push image') {
        /* Finally, we'll push the image with two tags:
         * First, the incremental build number from Jenkins
         * Second, the 'latest' tag.
         * Pushing multiple tags is cheap, as all the layers are reused. */
        docker.withRegistry('https://registry.hub.docker.com', 'docker-hub-credentials') {
            app1.push("${env.BUILD_NUMBER}")
            app1.push("latest")
            app2.push("${env.BUILD_NUMBER}")
            app2.push("latest")
        }
        post {
        always {
            emailext body: 'A Test EMail', recipientProviders: [[$class: 'DevelopersRecipientProvider'], [$class: 'RequesterRecipientProvider']], subject: 'Test'
        }
    }
        
    }
}
