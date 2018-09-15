## Configure Docker and EC2 
https://docs.docker.com/machine/drivers/aws/  
- options for configuration  


#### list Docker Names
`docker-machine ls` 

### Run Docker EC2 Machine
`docker-machine create --driver amazonec2 --amazonec2-ami ami-d96215ce  --amazonec2-root-size 30 --amazonec2-ssh-user ubuntu --amazonec2-instance-type g2.2xlarge  aws09`


#### remove a `NAME`
`docker-machine rm aws01` where `aws01` is NAME

#### remove a `NAME` (forced removal, if above does not work)
`docker-machine rf -f aws01`

#### Run Docker EC2
`docker-machine ssh aws09` where `aws09` is the name of the docker image

user id:
`ubuntu@aws09:~`

#### Help
`docker-machine help`

### Use `scp` (transfer files from local to EC2)
`docker-machine scp -r ~/Desktop/my_ork/KOJAK/Mozart/ aws09:~`
