SHELL := /bin/bash

VERSION := localbuild-unsafe

USER ?= $(shell whoami)

PROJECT_NAME = $(notdir $(PWD))

.PHONY : br build nv run all build-no-cache

all: build run
br: all

build:
	sudo docker build -t $(USER)/$(PROJECT_NAME):latest \
		-t $(USER)/$(PROJECT_NAME):v$(VERSION) .

build-no-cache:
	sudo docker build --no-cache -t $(USER)/$(PROJECT_NAME):latest \
		-t $(USER)/$(PROJECT_NAME):v$(VERSION) .

nv:
	ln -s $(PWD)/nvim/init.vim ~/.config/nvim/init.vim
	ln -s $(PWD)/nvim/mappings.vim ~/.config/nvim/mappings.vim
	curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs \
		https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

run:
	@echo running
	sudo docker run -it --volume $(PWD):/$(PROJECT_NAME) \
		--name nv --rm -i -t $(USER)/$(PROJECT_NAME):latest


