# rancher-ping-test

Simple container that can ping a remote host repeatedly with a given sleep between pings.

## Usage

```shell
docker run --rm -ti ghcr.io/bkrein-vertex/ping-test:latest
```

The above command will continuously ping `api.github.com` every `2 seconds` (defaults): 

```shell
Wed Nov 22 16:28:56 UTC 2023 - api.github.com.          5       IN      A       140.82.114.6
Wed Nov 22 16:28:58 UTC 2023 - api.github.com.          5       IN      A       140.82.114.6
Wed Nov 22 16:29:00 UTC 2023 - api.github.com.          5       IN      A       140.82.114.6
Wed Nov 22 16:29:02 UTC 2023 - api.github.com.          5       IN      A       140.82.114.6
Wed Nov 22 16:29:04 UTC 2023 - api.github.com.          5       IN      A       140.82.114.6
...
```

Customized target & sleep delay: 

```shell
docker run --rm -ti ghcr.io/bkrein-vertex/ping-test:latest -- -t "google.com" -s "1"
```

