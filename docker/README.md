# Run Docker at Terminal


### Docker version:  `docker -v`
See what version of Docker is running
```bash
▶ docker -v
Docker version 1.12.0, build 8eab29e
```

### Finding Images [on Docker Hub]
[Docker Hub](https://hub.docker.com/)  
One of the features of Docker is that a lot of people have created Docker images for a variety of purposes. Many of these have been uploaded to Docker Hub. You can search these images on the Docker Hub website.

### Finding Images [via terminal]
```bash
docker search
```
You can also search for images on the command line using the `docker search` command. 

### Listing Images on the Host
```bash
docker images
```
>my example
```bash
▶ docker images
REPOSITORY                   TAG                 IMAGE ID            CREATED             SIZE
mongo                        latest              c6d2bbc1f992        2 hours ago         364.2 MB
jupyter/all-spark-notebook   latest              7eadcd917087        34 hours ago        5.549 GB
jupyter/pyspark-notebook     latest              1a3167c6b2fb        34 hours ago        5.214 GB
kaggle/rstats                latest              179b4ead03d7        9 weeks ago         13.81 GB
~  master ✗    
```

### Pull a Docker Image
```bash
docker pull <image_name>
```
#### What you see are `layers` of the image being pulled
>my example 
```bash
▶ docker pull kaggle/python
Using default tag: latest
latest: Pulling from kaggle/python
357ea8c3d80b: Pull complete 
028fa4f48802: Pull complete 
e767cf6ca194: Pull complete 
a8b6da98211d: Pull complete 
089893db5b7b: Pull complete 
f648e1a2db13: Pull complete 
120f9e9d9a36: Pull complete 
419a5ea7343d: Pull complete 
Digest: sha256:178bae25efad1fc25f2245565543077bb6b3e7edb42d9019a30b73109df1aa3d
Status: Downloaded newer image for kaggle/python:latest
~  master ✗                                                                           ◒  
▶ 
```

### Get Container's IP Address
```bash
docker-machine ip default
```

### Display Active Docker Images
```bash
docker ps -a
```
### Rename an Image
```bash
docker rename <containerID> <new_name>
```

### Get Docker IP Address
Note:  Use the CONTAINER ID value:
```bash
docker inspect <CONTAINER ID> | grep -w "IPAddress" | awk '{ print $2 }' | head -n 1 | cut -d "," -f1
```
>my example
```bash
▶ docker inspect 30bc3c474000 | grep -w "IPAddress" | awk '{ print $2 }' | head -n 1 | cut -d "," -f1  
"777.77.7.7"
```
#### Get IP address from terminal
Mine is:  
http://777.77.7.7:8888/  
http://88.888.88.100:8888/  






---

### References

[Kaggle blog:  How to Get Started with Data Science in Containers](http://blog.kaggle.com/2016/02/05/how-to-get-started-with-data-science-in-containers/)

[video:  Docker for Data Scientists](https://civisanalytics.com/blog/data-science/2016/05/11/strata-2016-talk/)

[Docker documentation:  Images](https://civisanalytics.com/blog/data-science/2016/05/11/strata-2016-talk/)

---

```
http://www.sohamkamani.com/blog/2016/06/30/docker-mongo-replica-set/  
$ docker pull mongo
* Run docker by going to Applications folder:  Docker Quickstart Terminal.app  
```
