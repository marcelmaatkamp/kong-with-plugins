ARG KONG_VERSION

FROM kong/kong:${KONG_VERSION}
USER root
                                                                                                                                                                                      
RUN \
 bash -c '\
  for i in kong-upstream-jwt \
kong-oidc-consumer \
kong-upstream-jwt \
kong-plugin-sa-jwt-claims-validate \
kong-oidc-v2 \
kong-enhanced-oidc \
kong-oidc \
kong-oidc-adfs \
kong-oidc-ng \
kong-oidc-forward-host \
kong-oidc-ws-rbac \
kong-spec-expose \
kong-kafka-log \
kong-response-size-limiting \
kong-splunk-log \
kong-consumer-rate-limiting \
comvita-kong-oidc \
kong-plugin-sync-eureka \
kong-error-log \
kong-tx-debugger \
kong-plugin-rbac \
kong-siteminder-auth \
kong-plugin-jwt-rbac \
lzq-kong-oidc \
kong-plugin-jwt-auth-rbac \
kong-plugin-kubernetes-sidecar-injector \
kong-middleman \
kong-prometheus-plugin \
kong-request-intercept \
kong-plugin-amqp \
kong-path-whitelist \
kong-plugin-grpc-web \
kong-plugin-ice-grpc-gateway \
kong-upstream-hmac \
kong-plugin-grpc-gateway \
kong-external-auth \
ab-microsensor \
kong-plugin-jwt-crafter \
kong-plugin-url-replace \
kong-plugin-Abtesting \
header-transfer \
kong-oauth2-ext \
kong-force-https \
kong-plugin-redis-auth \
oauth2-acl \
kong-plugin-request-transformer \
kong-plugin-signalfx \
kong-churnzero \
kong-plugin-uppercase-response \
kong-plugin-resource-transformer \
kong-payload-size-limiting ; \
  do \
   luarocks install $i; \
  done;'


