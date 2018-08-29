# dockerfile_centos
# docker image
https://hub.docker.com/r/misris/centos/
# build
```
$ git clone git@github.com:misris/dockerfile_centos.git
$ cd dockerfile_centos
$ docker build -t misris/centos .
```
# enable ssh
```
$ docker pull misris/centos
$ docker run --privileged -p 2222:22 --name misris_container -d misris/centos /sbin/init
$ docker exec -it <container_id> /bin/bash

// Add a rsa public key to ~/misris/.ssh/authorized_keys //

$ systemctl start sshd
```
Now you can connect to the misris_container
```
$ ssh -i ~/.ssh/<public key> -p 2222 misris@localhost
```
