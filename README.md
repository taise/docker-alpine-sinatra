# docker-alpine-sinatra


## build docker image

```
docker build . -t ruby:2.3-alpine-sinatra
```

## docker run sinatra app with Puma

```
docker run -it -p 4567:4567 ruby:2.3-alpine-sinatra
```
