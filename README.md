# docker-alpine-sinatra


## build docker image

```
docker build . -t ruby:2.3-alpine-sinatra
```

## docker run sinatra app with Puma

```
docker run -it -p 80:80 ruby:2.3-alpine-sinatra
```
