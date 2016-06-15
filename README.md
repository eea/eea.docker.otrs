# eea.docker.otrs

run the container with docker-compose:

create the data container otrs_data (see below)

```
# git clone <reponame>
# docker-compose build 
# docker-compose up -d
```

moving data volume containers from one host to another:

- donor host

```
# docker run --rm --volumes-from=otrs_data -v $(pwd):/backup busybox tar cvfp /backup/otrs_data.tar /var/lib/mysql
```

- target host

```
# docker run -d --name otrs_data eeacms/mysql_data
# docker run --rm --volumes-from=otrs_data -v $(pwd):/backups busybox tar xvf /backups/otrs_data.tar
```
