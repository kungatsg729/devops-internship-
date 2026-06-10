Week4:
Interns must run PostgreSQL and MongoDB in containers, perform basic CRUD operations, create persistent volumes, inspect logs, and write connection details as environment variables. They should understand SQL vs NoSQL from operational and application perspectives.

In this week, we combined what we had learned earlier weeks to run a persistent volume database fully inside a container. We did this by creating a docker-compose file as shown below:

![Figure 22](../screenshots/dbcompose.png)

We selected the appropriate image, set the environment variables, exposed their respective ports and mapped the volume to physical local storage for persistence. Mapping the volume is important especially in containerized databases since killing the container kills the data permanently too without it. 
We ran the compose file next using the following command:
(note: we used -f (flag) because we already have a docker-compose file and we don’t want them to clash)

![Figure 23](../screenshots/dbcomposeup.png)

After successfully running the containers, we checked the running status, container names and everything using docker ps. Then we went into both postgres and mongodb terminals to perform basic CRUD operations to test and further understand databases in containers.
We noticed that the commands were slightly different in terminals but it was not as difficult as it looked once you got the hang of it.
We first performed the operations on postgresql with the screenshots of commands provided below:

Psql:
Create (Table):
  ![Figure 24](../screenshots/pstable.png)
Insert:
  ![Figure 25](../screenshots/psinsert.png)
  ![Figure 26](../screenshots/psselect.png)
  ![Figure 27](../screenshots/psdbt.png)

Update:
  ![Figure 28](../screenshots/psupdate.png)
  ![Figure 29](../screenshots/psupdata.png)
Delete:
  ![Figure 30](../screenshots/psdelete.png)
  ![Figure 31](../screenshots/psdeldata.png)

Mongodb:
Create:
  Db:
  ![Figure 32](../screenshots/mcreate.png)
  Table:
  ![Figure 33](../screenshots/minsert.png)
  ![Figure 34](../screenshots/minsertdata.png)
Update:
  ![Figure 35](../screenshots/mupdate.png)
  ![Figure 36](../screenshots/mupdatedata.png)
Delete:
  ![Figure 37](../screenshots/mdelete.png)
  ![Figure 38](../screenshots/mdelete.png)

After checking all these operations, we can safely say that we have thoroughly learned databases, containerization and databases in containers. We further checked our logs to exercise our understanding regarding the subject. We saw that our records were stored along the many lines of the given image:

![Figure 39](../screenshots/dclogs.png)


Differences between SQl and NoSQL:
Basically SQL databases like PostgreSQL store data in tables with rows and columns, kind of like a spreadsheet. Everything has a strict structure and you have to define what columns exist before you can put data in. Its good when your data is predictable and you need relationships between tables like connecting a user to their orders.
NoSQL databases like MongoDB are more flexible. Instead of tables you have collections and instead of rows you have documents which are basically JSON objects. You dont have to define a structure beforehand so if your data changes shape a lot it works better. The downside is theres no strict rules so you can accidentally store inconsistent data.
For this week I ran both using Docker Compose and practiced basic CRUD operations on both. Honestly PostgreSQL felt more familiar because SQL syntax is straightforward. MongoDB took a bit to get used to especially the query syntax.

Why volumes are needed:
When I first ran the database container without a volume I realized that every time I stopped and removed the container all my data was gone. Thats because containers dont store data permanently by default, everything inside them is temporary.
Volumes fix this by storing the actual database files outside the container on the host machine. So even if the container crashes or gets deleted the data is still there. When you start a new container and attach the same volume it picks up right where it left off.
Without volumes, databases in Docker are useless for anything real because we would lose everything on every restart.

Conclusion:
This week we got PostgreSQL and MongoDB running together using Docker Compose. Getting the environment variable names right took some trial and error but once that was sorted both databases came up without issues.
The biggest thing that clicked was volumes. We actually lost data after stopping a container which made it immediately obvious why volumes exist. Without them there is no point running a database in Docker.
Comparing SQL and NoSQL hands on was more useful than just reading about it. PostgreSQL felt structured and predictable, MongoDB was flexible but less strict. Both have their place depending on what the data looks like.
One thing that caught us off guard was Docker Compose prefixing container names with the folder name. Once we knew that running commands against the right container became straightforward.

