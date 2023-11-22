# rancher-ping-test

Simple container that can ping a remote host repeatedly with a given sleep between pings.

## Usage

```shell
docker run --rm -ti docker.binrepo.vtxdev.net/vtxtools/ping-test:latest
```

Customized target & sleep delay: 

```shell
docker run --rm -ti docker.binrepo.vtxdev.net/vtxtools/ping-test:latest -- -t "google.com" -s "1"
```

