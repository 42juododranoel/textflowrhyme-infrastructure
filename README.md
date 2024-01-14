# ✍️ Textflowrhyme Infrastructure 📦

## Terraform

`task terraform:apply`
`task terraform:destroy`

`terraform/.tfvars` contents:
```
digitalocean_token = "dop_v1_***"
```

## Ansible

`task ansible:install`

## Traefik

`.env` contents:
```
DOMAIN=textflowrhy.me
EMAIL=***
CERT_RESOLVER=letsencrypt
TRAEFIK_USER=***
TRAEFIK_PASSWORD_HASH='***'
```

Password hash should be generated with `htpasswd -nBC 10 <USERNAME>`.
