# docker-gitbucket

docker image for [gitbucket-3.5](https://github.com/takezoe/gitbucket) with java-1.7.0-openjdk on centos.

## Usage

```
$ sudo mkdir -p /opt/data/gitbucket
$ sudo docker run -d -p 8080:8080 -v /opt/data/gitbucket:/gitbucket sken/gitbucket
```

It tested in [Ubuntu Server 14.04 LTS](http://www.ubuntu.com/server). 
