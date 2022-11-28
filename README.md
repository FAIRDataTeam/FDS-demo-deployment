# FDS + TrainHandler demonstration deployment

## Components

- `trainhandler-client`
- `trainhandler-server`
- `fds`
- `keycloak`
- `postgres`

## Notes

- For deployment with proxy, you won't need the ports to be exposed (let Postgres for access through SSH for example)
- You will need domain names configured for all services except Postgres and configure `docker-compose.yml`, and both `application.yml` files accordingly
- Use HTTPS proxy for the exposed services (four)
- Set secure passwords for `keycloak` and `postgres` (again `docker-compose.yml`, and both `application.yml` files accordingly)
- Configure `fds/application.yml` to connect to some triple store / repository with data to be queried
- You can use `data.sql` to seed some basic data for demonstration in the Train Handler
