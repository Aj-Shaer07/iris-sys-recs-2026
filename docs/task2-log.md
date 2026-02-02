Environment:
- OS: Ubuntu
- Docker: 29.1.3
- Ruby: 3.3

- branch: task2 from origin/main

Actions Taken:

1. Created a private Docker network for internal communication between containers
![alt text](task2_ss/ss1.png)

2. Launched MySQL database in a separate Docker container
![alt text](task2_ss/ss2.png)
![alt text](task2_ss/ss3.png)

3. Updated database.yml to use environment variables and Docker network hostname

4. Built Rails Docker image using official ruby:3.3 base image
![alt text](task2_ss/ss4.png)
![alt text](task2_ss/ss5.png)

5. Launched Rails application container on the same Docker network as MySQL
![alt text](task2_ss/ss6.png)

6. Exposed Rails application on host port 8080
![alt text](task2_ss/ss9.png)

7. Verified Rails and MySQL connectivity via Docker network
![alt text](task2_ss/ss7.png)

8. Verified that MySQL port is not exposed to the host machine
![alt text](task2_ss/ss8.png)

9. Rails successfully connected to the MySQL container but detected pending migrations on first startup.

Command executed:
```bash
docker exec -it rails-app bin/rails db:migrate
```

Then it worked
![alt text](task2_ss/ss10.png)
![alt text](task2_ss/ss11.png)


Dependencies:
- Dockerfile reused from task1 (branch: origin/task1)