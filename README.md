#eea.docker.otrs

run the container with docker-compose:

create the data container otrs_data (see below)

```
# git clone <reponame>
# docker-compose build 
# docker-compose up -d
```

## Release to production

The production deployment is not made with `git clone` and `docker-compose build`.
Instead it pulls a tagged image from Docker Hub.  When you have tested your changes
and are satisfied, then you must push a new image up with a new version number that
follows [semantic versioning](http://semver.org/) principles.  Here is how you do it:

    git add {changed files}
    edit VERSION.txt
    git add VERSION.txt
    git commit
    version=$(cat VERSION.txt)
    git tag -a $version -m "Tagging the $version release of the 'otrs' Docker image."
    git push origin $version

    git push origin master
    
    in case there's no automatic build on docker hub:
    docker build -t eeacms/eea-otrs:latest otrs
    docker tag eeacms/eea-otrs:latest eeacms/eea-otrs:$version
    docker login --username=<user username> --email=<user email address>
    docker push eeacms/eea-otrs:latest
    docker push eeacms/eea-otrs:$version

The purpose of the procedure is to be able to redeploy the exact same image on a
new host, and to be able to roll back one or more versions if the deployment has problems.

