# How to use

## Clone repository
```
git clone git@github.com:jansanchez/nocker-alpine.git
```

## Build
```
docker build -t js/nocker-alpine .
```

## Run + sh (temporaly)
```
docker run -it --rm js/nocker-alpine sh
```

## How to use

### I'm working in that...

## Add dependency with Yarn
```
docker run -it --name nodejs --rm \
  -u node \
  -v ~/yarn_cache/:/tmp/cache/yarn/ \
  -v app:/home/node/app/ \
  js/nocker-alpine yarn add css-url-versioner
```

This image of Alpine Linux don't contain bash use sh, ash, /bin/sh or /bin/ash instead
i.e.: `docker run -it --rm image_name /bin/sh`
