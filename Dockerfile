#Download base image ubuntu 20.04
FROM ubuntu:20.04

# LABEL about the custom image
LABEL maintainer="ericman@ericman.com"
LABEL version="0.1"
LABEL description="This is custom Docker Image for \
playing with neovim + vim."

# Disable Prompt During Packages Installation
ARG DEBIAN_FRONTEND=noninteractive

# Update Ubuntu Software repository
RUN apt update

RUN apt install -y \
	neovim \
	curl \
	git \
	silversearcher-ag \
	build-essential \ 
	fzf \
  	ripgrep \
 	universal-ctags \
  	fd-find

WORKDIR /many-dots
COPY . /many-dots/

RUN mkdir -p ~/.config/nvim

RUN make nv

RUN nvim +'PlugInstall --sync' +qa

