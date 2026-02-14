Environment:
- OS: Ubuntu
- Docker: 29.1.3

- branch: task-4 from origin/task3

Actions Taken:
1. Added Prometheus, cAdvisior (for per container log) and Grafana services in the docker compose file

![alt text](task8_ss/ss1.png)

2. Configuered the prometheus.yml file to scrape infomation from node-exporter and cAdvisior

![alt text](task8_ss/ss16.png)

3. Ran 

```bash
docker compose --build
```

![alt text](task8_ss/ss15.png)

and verified prometheus and grafana are accessible and configured graffana to get data from prometheus

![alt text](task8_ss/ss11.png)
![alt text](task8_ss/ss12.png)
![alt text](task8_ss/ss13.png)
![alt text](task8_ss/ss14.png)

4. Ran 

```bash
for i in {1..500}; do   curl -s -o /dev/null -w "%{http_code}\n" http://localhost; done
```

twice to mimic load and got following results.

![alt text](task8_ss/ss2.png) 
![alt text](task8_ss/ss3.png) 
![alt text](task8_ss/ss5.png) 
![alt text](task8_ss/ss6.png) 
![alt text](task8_ss/ss9.png)

Note: The CPU load was pretty constant since the SQL query is very simple and the curl request are not concurrent
