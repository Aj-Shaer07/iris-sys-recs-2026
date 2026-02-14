Environment:
- OS: Ubuntu
- Docker: 29.1.3

- branch: task-4 from origin/task3

Actions Taken:
1. Configured Nginx to limit no.of requests sent from one ip address

![alt text](task7_ss/ss4.png)

2. Launched the containers again using docker compose (could have restarted nginx with the command

```bash
docker restart nginx
```

)

![alt text](task7_ss/ss2.png)
![alt_text](task7_ss/ss1.png)

3. Verified no.of requests sent from an ip cannot be more than rate per sec + bucket (10 + 20)                       

![alt text](task7_ss/ss3.png)


