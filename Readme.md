# Building the Image

```
docker build -t docker-id .
```

# Running the Image

```
docker run -e "PORT=3002" -p 3002:3002 docker-id
```

# Exporting the image

```
docker save docker-id > ../docker-id.tar
```

# Cleaning up

## Kill containers and remove them:

```
docker rm $(docker kill $(docker ps -aq))
```

## Remove all images

```
docker rmi $(docker images -q)
```
