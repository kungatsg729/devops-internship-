Dev-Ops Internship

Week 1:

Interns must create a Linux practice workspace, write shell scripts for system information and backup simulation, inspect logs, use grep to search text, and practice file permissions. The practical work should train them to use terminal confidently before cloud and Docker work starts.

- In this task, we created a Linux practice workshape for our devops-intern. We created a file system with devops-internship/ week1/ {script, logs, backup and notes}. Then we added some intro text into the notes by creating a new .txt file within it. Similarly we also created a .sh file in script that displayed user info, date, current directory and data usage. The screenshot for this scripting is provided below:

![Figure 1](screenshots/systeminfoscript.png)

Figure 1 system_info.sh script


We then used chmod +x to execute the file ( Although bash could directly be used, we wanted to practice file permissions), and used tee command to store the data directly into logs. Moving on, we were able to use the grep command to search for specific data within the logs such as 'user' or 'data usage'.
Additionally, we also created a new file that allowed us to directly create a backup of the script folder and the notes folder. We did this by creating an executable file that recursively copied the contents of these folders into two separate folders within backup. We tested it and the backup sh code ran perfectly and did not mess with the log since we had not intended for there to be a tee command. The screenshot is provided below:

![Figure 2](screenshots/savingscript.png)

Figure 2 script for saving
















Week 2: 
Interns must push Week 1 Linux scripts to GitHub, create a new branch, update README.md, open a pull request, and set up a simple GitHub Actions workflow that validates the repository by running shell commands.

Pushing Week1 Linux scripts to GitHub:
In this week’s task, we firstly learned how to use git. We learned all the important commands that taught us:
* how to start a git (git init), 
* how to stage changes (git add)
* how to view them (git status)
* how to commit them (git commit)
* how to view commits (git log)

Additionally, we learned how to create and connect to a repository in github to take our work from local to remote. We did this by first logging into gh through the terminal and linking our project to the repository. We used the command: git remote add name <link>. We used SSH keys instead of personal tokens to prevent the hassle of having to login again and again.

After linking our week1 devops-internship directory to github, we pushed all of the codes into the repository using git push -u origin main. In practice, it is always advised to pull before pushing to prevent  unwanted errors but we ignored this since our repository was empty. Given below is the screenshot of our pushed repository:

![Figure 3](screenshots/pushedweek1.png)

Figure 3 repository pushed into gh


In figure 3, we can alsp see a .gitignore file stored. A .gitignore file is an invisible file that contains files that you do NOT want to push to github. This includes sensitive files like ssh keys, passwords, secrets, etc.

Creating a new branch (week2-git-cicd):
For the next task we created a branch in our repository. We were originally in the ‘main’ branch but we created a separate branch called ‘week2-git-cicd’. Branches are an important part of git since they help us to debug, test out new features, etc in a safe environment without harming the original file. 
We created a branch using git branch week2-git-cicd command and used git checkout week2-git-cicd to move into that branch. We can see the branches made using the git branch command like shown below:

![Figure 4](screenshots/branches.png)

Figure 4 git branches
After creating the branch and some changes into it, we checked to see the main branch but the file in the main branch stayed exactly the same. Then we committed the changes and tried to push it to gh. 
After successfully pushing, we tried to create a pull request too. We changed the readme from gh itself and tried to pull from our terminal. That too was successful.
Then we merged the branches in main using git merge <target> <destination>.  After committing and pushing these changes, we saw that it was updated in the remote repository as well.
The creation of CI/CD using yaml:
CI/CD is a core aspect of devops and cloud engineering. A CI/CD pipeline is basically a repeatable sequence of steps that organizes task, info and decisions to accomplish a specific task. 
To create one for our project, we first created a CI/CD file under .github/workflows. This is vital while creating any CI/CD file. We created this file using YAML which a data serialization language. The exact file we created is shown below:

![Figure 5](screenshots/CIpipeline.png)

Figure 5 CI
This file created a condition testing code validity that ran when one of our branches pushed or our main branch pulled. We tested to see if this was working by pushing a branch with intentional errors of our repository and this was the result:

![Figure 6](screenshots/errorforCI.png)

Figure 6 error in code CI

![Figure 7](screenshots/errordetails.png)

Figure 7 error details
We found out that GitHub actions logged the user who made the push and rejected it due to an error that we placed on our yaml syntax on line 2. We also got an email regarding the reject informing us to make changes and re-push. This showcases the obvious benefits of a CI pipeline with clear accountability, error description and error notification making the developer’s job easier.
We fixed the error and tried pushing it again resulting in following:

![Figure 8](screenshots/fixedpush.png)

Figure 8 fixed push

![Figure 9](screenshots/fixederrorinfo.png)

Figure 9 fixed push info
We can see that the repository was pushed successfully after fixing the error. One thing to note is that github actions does not emphasize on notifying when a push is successful since sending a mail everytime regardless of error makes it more prone to being ignored.
In conclusion, we learned how to confidently operate using git and github while also learning how to build a basic yml file and diving into the fundamentals of CI/CD. We will use this knowledge throughout our internship program and in our future endeavors even in fields that may not be totally cloud related.
Week 3: 
Interns must create a simple containerized application, build an image, run it as a container, check logs, stop/remove containers, and then use Docker Compose to manage services together. The main learning is understanding what happens during build and run.

In this week, we learned how to create a simple containerized application using docker and how to run it along with container creation, writing yaml files for Dockerfile and docker compose. 

The first thing we did is created a simple python application using flask to run it on localhost. The screenshot of the code is provided below:

![Figure 10](screenshots/python_file.png)

We then created a Dockerfile to containerize and run the application by building a docker image. 
We installed python3 and python3pip for flask within the file and created a command to be executed during container creation. We also copied our python file as the source into /app.

![Figure 11](screenshots/Dockerfile.png)

We then built the image and ran the container using the following commands:
image building:
![Figure 12](screenshots/buildimage.png)

Running container:
![Figure 13](screenshots/runcontainer.png)

Furthermore, we checked what containers are running using docker ps command and used docker logs to view its status. Similarly, we stopped and removed the container using docker stop and docker rm respectively.
Container status:
![Figure 14](screenshots/dockerps.png)
Container log:
![Figure 15](screenshots/dockerlog.png)
Container stop:
![Figure 16](screenshots/dockerstop.png)
Container remove:
![Figure 17](screenshots/dockerrm.png)

Moving on to the next part of the assignment, we created a docker-compose.yml file. We used the same solo local Dockerfile to build it for simplicity although it could’ve been done using multiple containers.
The docker-compose file is shown below:
![Figure 18](screenshots/dockercompose.png)
Similarly, we used docker compose up to run this file and checked the status of the containers.
![Figure 19](screenshots/dockercomposeup.png)
![Figure 20](screenshots/dockercomposeps.png)
To end this week’s assignment, we shut the container down by using the docker compose down command as shown below:
![Figure 21](screenshots/dockercomposedown.png)

Conclusion: 
In this week, we thoroughly learned how to use docker, its purposes, importance, syntax of a dockerfile and dockercompose file, the concept of volumes, port-mapping etc. We will be using the knowledge obtained from this week throughout coming weeks.





