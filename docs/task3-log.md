Environment:
- OS: Ubuntu
- Docker: 29.1.3
- Ruby: 3.3

- branch: task3 from origin/main

Actions Taken:

1. Added Nginx container as reverse proxy

2. Configured Nginx to proxy requests to Rails via Docker network

3. Removed direct port exposure from Rails container
![alt text](task3_ss/ss3.png)

4. Exposed Nginx on port 80                            
![alt text](task3_ss/ss2.png)

5. Verified application accessible only via Nginx
![alt text](task3_ss/ss6.png)
![alt text](task3_ss/ss1.png)
![alt text](task3_ss/ss7.png)

6. Verified the logs using 

```bash
docker logs nginx
docker logs rails-app
```

![alt text](task3_ss/ss4.png)
![alt text](task3_ss/ss5.png)

Dependencies:
- Dockerfile reused from task1 (branch: origin/task1)
- config/database.yml from task2 (branch: origin/task2)
