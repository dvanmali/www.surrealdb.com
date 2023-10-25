$ export SURREALDB_URL=https://$(DOMAIN)
$ surreal sql -e $SURREALDB_URL
> DEFINE USER root ON ROOT PASSWORD 'StrongSecretPassword!' ROLES OWNER;

# Verify you can connect to the database with the new credentials:
$ surreal sql -u root -p 'StrongSecretPassword!' -e $SURREALDB_URL
> INFO FOR ROOT
[{ namespaces: { }, users: { root: "DEFINE USER root ON ROOT PASSHASH '...' ROLES OWNER" } }]