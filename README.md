# pypicloud-confd

This adds confd & templating support to the docker image [stevearc/pypicloud:1.0.2](https://hub.docker.com/r/stevearc/pypicloud/).

# Instructions

## Building
To build the image use the following bash command:
```
docker-compose build
```

## Sample Environment

To run locally with sample environmental variables use the following bash commands:
```
docker-compose down
docker-compose up
```

Install a sample package and view it in the web UI
```
pip install -i http://person1:person1@localhost:8080/simple/ scipy
open http://localhost:8080/#/
```

### Usernames & Passwords

#### Sample Admins (read/write)
- admin / password
- jenkins / jenkins

#### Sample Regular Users (read-only)
- person1 / person1
- person2 / person2