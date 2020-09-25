# Kong with plugins
![kong](docs/images/kong_1.png)

This repository builds and runs Kong with the following plugins enabled:

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
Run kong and konga:
```
 $ git clone https://github.com/marcelmaatkamp/kong-with-plugins &&\
   cd kong-with-plugins &&\
   docker-compose run kong kong migrations bootstrap &&\
   docker-compose run konga -c prepare -a postgres -u postgresql://${POSTGRES_USER:kong}:${POSTGRES_PASSWORD:kong}@postgres:5432/konga \
   docker-compose up konga
```

# kubernetes
```
```
