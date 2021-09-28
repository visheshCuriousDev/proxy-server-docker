# CORS Proxy

This is a simple CORS-proxy created for development purposes to simplify integration with third-party APIs.

The proxy is based on *nginx*

## Usage

### Standalone Docker container

Replace http://example.com with the target API url

```sh
# docker run -d \
    --name cors-proxy \
    -p 127.0.0.1:8000:8000 \
    -e TARGET_URL=http://example.com \
    -v `pwd`/proxy.conf:/etc/nginx/templates/proxy.conf.template \
    nginx:alpine
```

### Docker-compose

Set your target API url in the `docker-compose.yml` file, then run:

```sh
# docker-compose up -d
```

### With existing nginx configuration 

In the `docker-compose.yml` you will need to replace `TARGET_URL` value with the target API url and make other adjustments if needed.

### Run using a script file
```sh
# sh run_proxy_servers.sh
```

