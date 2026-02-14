Environment:
- OS: Ubuntu
- Docker: 29.1.3

- branch: task-4 from origin/task3

Actions Taken:
1. Configured Nginx upstream by adding ip_hash to prevent CSRF authentication error

![alt text](task5_ss/ss5.png)
![alt text](task5_ss/ss4.png)

2. Launched three Rails containers and added a volume at /app/storage to prevent elements loading errors that might occur when loading images after refreshing the webpage.

![alt text](task5_ss/ss2.png)

3. Launched mysql container with  persistence                        

![alt text](task5_ss/ss1.png) 
![alt text](task5_ss/ss6.png)

5. Verified user can signup and login without issues and data remains in the database even after stopping the containers and restarting them.
![alt text](task4_ss/ss7.png)

