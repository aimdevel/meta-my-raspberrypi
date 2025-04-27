## self-hosted runner for building yocto
### How to use
1. Build dokcer image.
```
$ docker build -t yocto-build-runner .
```
2. Edit .env file according to your environment.
3. Run container
```
$ docker run -it --env-file .env yocto-build-runner
```
