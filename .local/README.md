# Local deployment of the FAIR Data Station/Train

The `.local` folder contains copies of all files, adapted to run on localhost.

## How to run

Run as follows (from `.local` dir):

```bash
docker compose up -d
```

The keycloak server is configured automatically based on `realm.json`.

Now we can visit http://localhost:3000 and log in using the `test` user (username: `test`, password: `test`).


## Manual configuration of keycloak

If necessary, it is also possible to [configure keycloak] manually, following the steps below.
Do make sure the values match those defined in the compose file.

1. use a web browser to open the admin console at https://localhost:8085
2. log in using the dummy admin credentials defined in the `compose.yml` file
3. create a realm with *Name* `fdt` (matching `NUXT_PUBLIC_KEYCLOAK_REALM`)
4. in this realm, under "Clients", create a client with *Client ID* `trainhandler-client` (matching `NUXT_PUBLIC_KEYCLOAK_CLIENT_ID`)
5. set both *Valid redirect URIs* and *Valid post logout redirect URIs* for the client to `http://localhost:3000/*`, and save changes
6. under "Realm roles" create a new role with name `user` (expected by trainhandler-server)
7. under "Users", create a new user with *Username* `test` (arbitrary)
8. select the user's *Credentials* tab and set a password (disable "Temporary", for convenience)
9. select the user's *Role mapping* tab and assign the `user` role


Note that it is also possible to disable keycloak by setting `NUXT_PUBLIC_KEYCLOAK_DISABLED: false` in the compose file.

[configure keycloak]: https://www.keycloak.org/docs/latest/authorization_services/index.html#_resource_server_overview
