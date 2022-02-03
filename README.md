# Calisto MariaDB project

## Create a .env file

Set the parameter MARIADB_EXPOSE_PORT

```env
MARIADB_EXPOSE_PORT=1234
```

## Run the docker-compose

Then run the docker compose:

```bash
docker-compose -p calisto_dev -f docker-compose.dev.yml up --build --detach
```

Specifying a custom .env file:

```bash
docker-compose --env-file .env.dev -p calisto_dev -f docker-compose.dev.yml up --build --detach
```

## To cleanup and rebuild

```bash
docker container stop calisto_mariadb.dev
docker container rm calisto_mariadb.dev
docker image rm calisto/mariadb.dev
docker volume prune -f
docker network prune -f
```

## To enter in the interactive mode

```bash
docker exec -it calisto_mariadb_dev bash
```

### to connect at mariadb sql

```bash
mysql -u <username> -p
```
