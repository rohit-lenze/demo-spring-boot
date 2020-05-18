# demo-spring-boot
Demo project to explore github actions to do the following:
1. build the spring boot project with maven.
2. dockerize the application.
3. push the docker image to github/dockerhub/nexus.

## Core concepts for GitHub Actions, that are used in the project:
* <B>Action:</B> 
Individual tasks that you combine as steps to create a job. Actions are the smallest portable building block of a workflow. You can create your own actions, use actions shared from the GitHub community, and customize public actions. To use an action in a workflow, you must include it as a step.

* <B>Event:</B> 
A specific activity that triggers a workflow run. For example, activity can originate from GitHub when someone pushes a commit to a repository or when an issue or pull request is created. You can also configure a workflow to run when an external event occurs using the repository dispatch webhook.

* <B>Runners:</B>
GitHub hosts Linux, Windows, and macOS runners. Jobs run in a fresh instance of a virtual machine that includes commonly-used, preinstalled software. You can use a runner hosted by GitHub or host your own runner. A runner waits for available jobs. When a runner picks up a job, it runs the job's actions and reports the progress, logs, and final results back to GitHub. Runners run one job at a time. 

* <B>Job:</B>
A set of steps that execute on the same runner. You can define the dependency rules for how jobs run in a workflow file. Jobs can run at the same time in parallel or run sequentially depending on the status of a previous job. For example, a workflow can have two sequential jobs that build and test code, where the test job is dependent on the status of the build job. If the build job fails, the test job will not run. For GitHub-hosted runners, each job in a workflow runs in a fresh instance of a virtual environment.

* <B>Workflow file:</B>
The YAML file that defines your workflow configuration with at least one job. This file lives in the root of your GitHub repository in the .github/workflows directory.

* <B>Authenticating to GitHub Packages</B>
You need an access token to publish, install, and delete packages in GitHub Packages. You can use a personal access token to authenticate with your username directly to GitHub Packages or the GitHub API. You can use a GITHUB_TOKEN to authenticate using a GitHub Actions workflow. You can authenticate to GitHub Packages with Docker using the docker login command.

<b> alternatively we can do below for login: </b> 
<i> docker login docker.pkg.github.com --username [user] --password [password] </i>


For more information visit https://help.github.com/en
