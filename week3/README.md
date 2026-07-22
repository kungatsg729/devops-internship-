## Week 3 — Docker & Containerization

> **Task:** Create a simple containerized application, build an image, run it as a container, check logs, stop/remove containers, and use Docker Compose to manage services together.

In this week, we learned how to create a simple containerized application using Docker and how to run it along with container creation, writing Dockerfiles and Docker Compose files.

The first thing we did was create a simple Python Flask application to run on localhost:

![Figure 10](../screenshots/week1-4/python_file.png)
*Figure 10 — Python Flask application*

We then created a Dockerfile to containerize and run the application. We installed `python3` and `pip` for Flask within the file and created a command to be executed during container creation. We also copied our Python file into `/app`.

![Figure 11](../screenshots/week1-4/Dockerfile.png)
*Figure 11 — Dockerfile*

We then built the image and ran the container:

![Figure 12](../screenshots/week1-4/buildimage.png)
*Figure 12 — building the image*

![Figure 13](../screenshots/week1-4/runcontainer.png)
*Figure 13 — running the container*

We checked running containers using `docker ps`, viewed logs using `docker logs`, and stopped and removed the container using `docker stop` and `docker rm` respectively:

![Figure 14](../screenshots/week1-4/dockerps.png)
*Figure 14 — container status*

![Figure 15](../screenshots/week1-4/dockerlog.png)
*Figure 15 — container logs*

![Figure 16](../screenshots/week1-4/dockerstop.png)
*Figure 16 — stopping the container*

![Figure 17](../screenshots/week1-4/dockerrm.png)
*Figure 17 — removing the container*

### Docker Compose

Moving on, we created a `docker-compose.yml` file using the same Dockerfile for simplicity:

![Figure 18](../screenshots/week1-4/dockercompose.png)
*Figure 18 — docker-compose.yml*

![Figure 19](../screenshots/week1-4/dockercomposeup.png)
*Figure 19 — docker compose up*

![Figure 20](../screenshots/week1-4/dockercomposeps.png)
*Figure 20 — compose container status*

![Figure 21](../screenshots/week1-4/dockercomposedown.png)
*Figure 21 — docker compose down*

> **Conclusion:** In this week, we thoroughly learned how to use Docker, its purposes, importance, the syntax of Dockerfiles and Compose files, the concept of volumes, port-mapping and more. We will be using the knowledge from this week throughout the coming weeks.
