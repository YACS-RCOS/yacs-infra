# YACS Ops

Collection of services running to assist production and development.

## Configuration

1. Copy `example.env` to `.env` and change variables to suit environment.
2. Then run `make` or `make ops-up`. (Starts services in background)

### Environment Var Change

If you change an environment variable in `.env`, re-run `make` or `make ops-up`.

## Service Catalog

- PgAdmin: Manually run SQL queries across production database
- Grafana: Charting and diagrams
- Dozzle: Web docker-compose log watcher
- Ackee: Analytics Service

## Service Prefixes

In the `./docker-compose.yml` and `example.env`, prefixes are used for the
environment variables to prevent name conflicts. The convention is full
uppercase with `YX_` (for YACS) prefix first, then service prefix (example
service - `EX`) to make `YX_EX_SOME_VAR`. The table below describes the
prefixes.

*NOTE, `YX_SSL` is not a service; only used to refer to local paths of SSL key and
cert. (`YX_SSL_KEY_LOCATION` and `YX_SSL_CERT_LOCATION`)*

### Bunker

Some services are not automatically configurable with SSL, hence, we set them
behind a [bunker](https://github.com/bunkerity/bunkerized-nginx#let-s-encrypt)
(customized Nginx server) to enable SSL and custom authentication. When behind
a bunker, prefix is `YX_BNK`.

| Service Name      | Environment Var Prefix |
| ----------------- | ---------------------- |
| PgAdmin           | YX_PG                  |
| Grafana           | YX_GF                  |
| Bunker for Dozzle | YX_BNK_DL              |
| Bunker for Ackee  | YX_BNK_ACKEE           |

## Reference Docs

- [Docker Compose Environment Variables](https://docs.docker.com/compose/env-file/)
