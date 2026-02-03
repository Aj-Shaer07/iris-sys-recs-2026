Environment:
- OS: Ubuntu
- Docker: 29.1.3

- branch: task-4 from origin/task3

Actions Taken:
1. Configured Nginx upstream for load balancing
![alt text](task4_ss/ss4.png)
2. Launched three Rails containers on private Docker network
![alt text](task4_ss/ss1.png)
![alt text](task4_ss/ss2.png)
![alt text](task4_ss/ss3.png)
3. Connected all Rails containers to single MySQL instance

4. Exposed only Nginx on port 80
![alt text](task4_ss/ss5.png)
![alt text](task4_ss/ss9.png)
![alt text](task4_ss/ss10.png)

5. Verified load balancing across Rails containers
![alt text](task4_ss/ss6.png)
![alt text](task4_ss/ss7.png)
![alt text](task4_ss/ss8.png)

