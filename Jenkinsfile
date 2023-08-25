node {
    def app
    
    env.IMAGE = 'gfakx/gf-amazon-app'

    stage('Clone repository') {
             git branch: 'main', url: 'https://github.com/gfakx/gitops-argocd-manifest.git'
    }

    stage('Update GIT') {
            script {
                catchError(buildResult: 'SUCCESS', stageResult: 'FAILURE') {
                    withCredentials([usernamePassword(credentialsId: 'gf-github-jenkins-usrpwd', passwordVariable: 'GIT_PASSWORD', usernameVariable: 'GIT_USERNAME')]) {
                        //script {def encodedPassword = URLEncoder.encode("$GIT_PASSWORD",'UTF-8')}
                        //script  {def IMAGE='gfakx/gfakx-amazon-app'}
                        sh "git config user.email gfakx@outlook.com"
                        sh "git config user.name gfakx"
                        //sh "git switch master"
                        sh "cat deployment.yml"
                        sh "sed -i 's+${IMAGE}.*+${IMAGE}:${DOCKERTAG}+g' deployment.yml"
                        sh "cat deployment.yml"
                        sh "git add ."
                        sh "git commit -m 'Done by Jenkins Job changemanifest: ${env.BUILD_NUMBER}'"
                        sh "git push https://${GIT_USERNAME}:${GIT_PASSWORD}@github.com/${GIT_USERNAME}/gitops-argocd-manifest.git HEAD:main"
             }
         }
     }
  }
}
