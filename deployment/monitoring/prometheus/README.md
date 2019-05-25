# Prometheus

## Configuração
```
curl -SL https://github.com/prometheus/node_exporter/releases/download/v0.18.0/node_exporter-0.18.0.linux-armv6.tar.gz > node_exporter.tar.gz && sudo tar -xvf node_exporter.tar.gz -C /usr/local/bin/ --strip-components=1

node_exporter &
```

## Referência

https://blog.alexellis.io/prometheus-nodeexporter-rpi/