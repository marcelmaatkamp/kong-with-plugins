# Kong with plugins
Kong with plugins

# installation
```
 $ git clone https://github.com/marcelmaatkamp/kong-with-plugins &&\
   cd kong-with-plugins &&\
   docker-compose build
```

# (build and) test locally
Test container locally with konga:

```
 $ git clone https://github.com/marcelmaatkamp/kong-with-plugins &&\
   cd kong-with-plugins &&\
   docker-compose run kong kong migrations bootstrap &&\
   docker-compose run konga -c prepare -a postgres -u postgresql://${POSTGRES_USER:kong}:${POSTGRES_PASSWORD:kong}@postgres:5432/konga \
   docker-compose up konga
```
```
