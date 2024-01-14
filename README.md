# ✍️ Textflowrhyme Infrastructure 📦

## Terraform

- Use `task terraform:apply` to spin up a server on DigitalOcean. Save the server’s IP address to `ansible/inventory.yml`. The opposite of that is `task terraform:destroy`.
- Don’t forget to create DigitalOcean PAT and save it to `terraform/.tfvars`:
```
digitalocean_token = "dop_v1_***"
```

## Ansible

- Use `task ansible:install` to install Docker and Taskfile.
- This requires `terraform:apply`.


## Docker

- Use `task docker:restart` to run new versions of the services and prune the old ones.
- This requires `ansible:install`.
- Don’t forget to create `.env` first:
```
DOMAIN=textflowrhy.me
EMAIL=***
CERT_RESOLVER=letsencrypt
TRAEFIK_USER=***
TRAEFIK_PASSWORD_HASH='***'
```
