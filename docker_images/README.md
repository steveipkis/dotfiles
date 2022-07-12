# Raison d'être

This folder will host simple containers with configurations for setting up different tools and environments.
Currently, only one container exists which sets up nvim with almost all the configurations and plugins I use for development. The only difference is the removal of an undo dir since development should not occur within a container, as well as some lua plugins that are not feasible in nvim<0.7.


In order to build:

```bash
docker build -f docker_images/Dockerfile -t nvim:latest
```

In order to run:

```bash
docker run -it nvim:latest /bin/bash
```
