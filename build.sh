#!/bin/bash
docker build --no-cache -t hackinglab/alpine-base-amd64:3.2.0 -t hackinglab/alpine-base:3.2 -t hackinglab/alpine-base:latest -f Dockerfile .
