
Week 3: 
Interns must create a simple containerized application, build an image, run it as a container, check logs, stop/remove containers, and then use Docker Compose to manage services together. The main learning is understanding what happens during build and run.

In this week, we learned how to create a simple containerized application using docker and how to run it along with container creation, writing yaml files for Dockerfile and docker compose. 

The first thing we did is created a simple python application using flask to run it on localhost. The screenshot of the code is provided below:

![Figure 10](../screenshots/python_file.png)

We then created a Dockerfile to containerize and run the application by building a docker image. 
We installed python3 and python3pip for flask within the file and created a command to be executed during container creation. We also copied our python file as the source into /app.

![Figure 11](../screenshots/Dockerfile.png)

We then built the image and ran the container using the following commands:
image building:
![Figure 12](../screenshots/buildimage.png)

Running container:
![Figure 13](../screenshots/runcontainer.png)

Furthermore, we checked what containers are running using docker ps command and used docker logs to view its status. Similarly, we stopped and removed the container using docker stop and docker rm respectively.
Container status:
![Figure 14](../screenshots/dockerps.png)
Container log:
![Figure 15](../screenshots/dockerlog.png)
Container stop:
![Figure 16](../screenshots/dockerstop.png)
Container remove:
![Figure 17](../screenshots/dockerrm.png)

Moving on to the next part of the assignment, we created a docker-compose.yml file. We used the same solo local Dockerfile to build it for simplicity although it could’ve been done using multiple containers.
The docker-compose file is shown below:
![Figure 18](../screenshots/dockercompose.png)
Similarly, we used docker compose up to run this file and checked the status of the containers.
![Figure 19](../screenshots/dockercomposeup.png)
![Figure 20](../screenshots/dockercomposeps.png)
To end this week’s assignment, we shut the container down by using the docker compose down command as shown below:
![Figure 21](../screenshots/dockercomposedown.png)

Conclusion: 
In this week, we thoroughly learned how to use docker, its purposes, importance, syntax of a dockerfile and dockercompose file, the concept of volumes, port-mapping etc. We will be using the knowledge obtained from this week throughout coming weeks.

