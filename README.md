# rancher-ping-test

Simple container that can ping a remote host repeatedly with a given sleep between pings.

## Usage

```shell
docker run --rm -ti ghcr.io/bkrein-vertex/ping-test:latest
```

Customized target & sleep delay: 

```shell
docker run --rm -ti ghcr.io/bkrein-vertex/ping-test:latest -- -t "google.com" -s "1"
```

