# Alpine Base amd64 
## Introduction
This is the alpine base image of the Hacking-Lab CTF system

## Specifications
* with s6 startup handling (version v3.1.2.1)
* with dynamic user creation
* with or without known passwords for root and non-root user
* with `env` based dynamic ctf flag handling
* with `file` based dynamic ctf flag handling

## Build & Test
1. `docker-compose up --build`

## USER SETTINGS
You can define the user that will being created in the docker. Please define these env variables in the docker-compose.yml file

* HL_USER_USERNAME=hacker
* HL_USER_PASSWORD=compass
* HL_ROOT_PASSWORD=very_secure

```
version: '3.6'

services:
  alpine-base-amd64:
    build: .
    image: hackinglab/alpine-base-amd64:3.2
    environment:
      - HL_USER_USERNAME=hacker
      - HL_USER_PASSWORD=compass
      - HL_ROOT_PASSWORD=<change-me>
```

If you do not set these env variables, the base image will create the user "hacker" with the uid 2000 and random passwords (for both, hacker and root)



