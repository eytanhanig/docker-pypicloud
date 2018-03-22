# pypicloud-confd

This adds confd & templating support to the docker image [stevearc/pypicloud:1.0.2](https://hub.docker.com/r/stevearc/pypicloud/).


# Instructions

## Building
To build the image use the following bash command:
```
docker-compose build
```

## Local Usage
To run locally with sample environmental variables use the following bash command:
```
docker-compose down
docker-compose up
```

Username & Passwords are:
- admin / password
- jenkins / jenkins
- automatic / automatic
- person1 / person1
- person2 / person2