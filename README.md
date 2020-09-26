# Kong with plugins
![kong](https://github.com/marcelmaatkamp/kong-with-plugins/blob/master/docs/images/kong_1.png)

This repository builds the Kong docker container `marcelmaatkamp/kong-with-plugins` with the following plugins enabled:

| x | x |
| -- | -- |
| x | x |

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
   docker-compose run konga -c prepare -a postgres -u postgresql://${POSTGRES_USER:kong}:${POSTGRES_PASSWORD:kong}@postgres:5432/konga \
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
