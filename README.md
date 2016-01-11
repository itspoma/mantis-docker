![](http://new.tinygrab.com/7020c0e8b0fd99ace270dd880e44ab8619a53dacaf.png)

To run on local:
```bash
$ boot2docker up
$ make
```

To run on stage:
```bash
$ curl -sSL https://get.docker.com/ | sh
$ docker -v
$ sudo service docker restart
$ git clone https://github.com/itspoma/mantis-docker mantis-docker/
$ cd mantis-docker/ && make
```

MySQL credentials:
```
login: root
password: toortoor
```

MantisBT credentials:
```
login: administrator
password: (as you set on setup stage)
```