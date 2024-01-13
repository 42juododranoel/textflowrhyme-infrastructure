terraform {
  required_version = ">= 1.0.0"

  required_providers {
    digitalocean = {
      source  = "digitalocean/digitalocean"
      version = "~> 2.0"
    }
  }
}

variable "digitalocean_token" {}

provider "digitalocean" {
  token = var.digitalocean_token
}

data "digitalocean_ssh_key" "textflowrhyme" {
  name = "textflowrhyme"
}

resource "digitalocean_droplet" "textflowrhyme" {
  image = "ubuntu-23-10-x64"
  name = "textflowrhyme"
  region = "fra1"
  size = "s-1vcpu-512mb-10gb"
  ssh_keys = [data.digitalocean_ssh_key.textflowrhyme.id]
}

resource "digitalocean_project" "textflowrhyme" {
  name = "textflowrhyme"
  purpose = "Web Application"
  resources   = [
    "${digitalocean_droplet.textflowrhyme.urn}"
  ]
}
