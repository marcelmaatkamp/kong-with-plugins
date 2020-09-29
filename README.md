# Kong with plugins
![kong](https://raw.githubusercontent.com/marcelmaatkamp/kong-with-plugins/master/docs/images/kong_1.png)

This repository builds the Kong docker container `marcelmaatkamp/kong-with-plugins` with the following plugins enabled:

| x | x |
| -- | -- |
| kong-oidc | -- |
| kong-upstream-jwt | -- |
| kong-enhanced-oidc | -- |
| kong-oidc-adfs | -- |
| kong-spec-expose | -- |
| kong-response-size-limiting | -- |
| kong-consumer-rate-limiting | -- |
| kong-plugin-kubernetes-sidecar-injector | -- |
| kong-plugin-amqp | -- |
| kong-plugin-grpc-web | -- |
| kong-plugin-grpc-gateway | -- |
| kong-plugin-request-transformer | -- |
| kong-plugin-signalfx | -- |
| kong-payload-size-limiting | -- |

![kong](https://raw.githubusercontent.com/marcelmaatkamp/kong-with-plugins/master/docs/images/kong_plugins.png

# installation
```
 $ git clone https://github.com/marcelmaatkamp/kong-with-plugins &&\
   cd kong-with-plugins &&\
   docker-compose build
```

# run locally
Run kong and konga locally:
```
 $ git clone https://github.com/marcelmaatkamp/kong-with-plugins &&\
   cd kong-with-plugins &&\
   docker-compose run kong kong migrations bootstrap &&\
   docker-compose run konga -c prepare -a postgres -u postgresql://${POSTGRES_USER:-kong}:${POSTGRES_PASSWORD:-kong}@postgres:5432/${POSTGRES_DB:-kong} \
   docker-compose up konga
```

# kubernetes
Run kong and konga in kubernetes:
```
$ helm template kong kong/kong \
   --set image.repository="marcelmaatkamp/kong-with-plugins" \
   --set image.tag="2.1.4" \
   --set env.plugins="bundled" \
   --set env.nginx_proxy_large_client_headers="16 256k" \
   --set env.nginx_proxy_proxy_buffers="4 256k" \
   --set env.nginx_proxy_proxy_buffer_size="128k" \
   --set ingressController.installCRDs=false | \
    minikube kubectl -- apply -f - 

$ helm template konga konga | kubectl apply -f -
```
