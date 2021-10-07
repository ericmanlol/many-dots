#!/usr/bin/env bash



sudo docker build -t ericmanlol/neovim:latest -t ericmanlol/neovim:v0.1 .
sudo docker run --name nv --rm -i -t ericmanlol/neovim:latest

