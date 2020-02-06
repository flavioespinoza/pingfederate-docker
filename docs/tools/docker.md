# Docker


## List-La-List



List containers with selected headers:

- `CONTAINER ID`, `STATUS`, `NAMES`, and `NETWORKS`

Command:

```bash
docker container ls --all --format 'table {{.ID}}\t{{.Status}}\t{{.Names}}\t{{.Networks}}'
```

Alias:

```bash
dls
```

```bash
# Output
CONTAINER ID        STATUS              NAMES               NETWORKS
4fbc3d80b884        Up 5 minutes        thirsty_engelbart   bridge
7bc6df6add8e        Up 5 minutes        elated_goodall      bridge
```

Other list containers command:

```bash
docker ps -a
```

```bash
# Output
CONTAINER ID        IMAGE                        COMMAND             CREATED             STATUS              PORTS               NAMES
4fbc3d80b884        908b4685da3d                 "/bin/sh"           2 minutes ago       Up 2 minutes                            thirsty_engelbart
7bc6df6add8e        flavioespinoza/alpine-node   "/bin/sh"           2 minutes ago       Up 2 minutes                            elated_goodall
```

<br />

## Kill-La-Kill

`docker` kill and delete commands for [containers](https://github.com/wsargent/docker-cheat-sheet#kill-running-containers) and [images](https://github.com/wsargent/docker-cheat-sheet#delete-dangling-images).

### stop running containers

```bash
docker kill $(docker ps -q)
```

### stop running containers and delete all containers

```bash
docker rm -f $(docker ps -qa)
```

### delete all images

```bash
docker rmi $(docker images -q)
```

<br />

## Run-Forest-Run

Run docker container name `MY_CONTAINER_NAME` from `DOCKERHUB_REPO` with image `IMAGE_NAME`:

```bash
docker run -td --name `MY_CONTAINER_NAME` `DOCKERHUB_REPO/IMAGE_NAME`
```

Run docker container name `ping_simple` from `flavioespinoza` with image `ping`:

```bash
docker run -td --name ping_simple flavioespinoza/ping
```

```bash
docker run -it --name ping_simple -p 9999:9999 -p 9031:9031 flavioespinoza/ping bash
```

**NOTE**: Use `-td` tag to keep container up and running:

<br />

## Enter the Matrix

> Enter `running` `docker` `containers` to setup and install your `GitHub` projects:

### list containers:

Command:
```bash
docker container ls --all --format 'table {{.ID}}\t{{.Status}}\t{{.Names}}\t{{.Networks}}'
```

Alias:
```bash
dls
```

```bash
CONTAINER ID        NETWORKS            STATUS                     NAMES                PORTS
5b8983cea469        bridge              Up 5 minutes               ping_simple          9031/tcp, 9999/tcp
6aae8e8c2c1b        demo                Up 41 hours                dev_nginx            8080/tcp, 8080/tcp
```

### enter running container:

Enter container named `ping_simple`:
```bash
docker exec -ti ping_simple sh
```

Enter nginx reverse proxy container named `dev_nginx`:
```bash
docker exec -ti dev_nginx sh
```

Enter running container with container ID `5b8983cea469`:

```bash
docker exec -ti 5b8983cea469 sh
```


