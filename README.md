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
# docker run --rm --volumes-from=otrs_data -v $(pwd):/backups busybox tar cvfp /backups/otrs_data.tar /var/lib/mysql
```

- target host

```
# docker run -d --name otrs_data eeacms/mysql_data
# docker run --rm --volumes-from=otrs_data -v $(pwd):/backups busybox tar xvf /backups/otrs_data.tar
```

## Release to production

The production deployment isn't made with `git clone` and `docker-compose build`. Instead it pulls an image from Docker Hub.
When you have tested your changes and are satisfied, then you must push a new image up. Here is how you do it:

    docker build -t eeacms/eea-otrs:latest otrs
    docker push eeacms/eea-otrs:latest

This mechanism will allow us to later implement release versioning and rollback of deployments.
