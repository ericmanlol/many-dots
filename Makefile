SHELL := /bin/bash

VERSION := localbuild-unsafe

PROJECT_NAME = $(notdir $(PWD))

.PHONY : br build nv run all build-no-cache

all: build run
br: build run 

build:
	@echo "b is $$0"
	@echo v$(VERSION)
	@echo $(PROJECT_NAME)
	sudo docker build -t ericmanlol/$(PROJECT_NAME):latest \
		-t ericmanlol/$(PROJECT_NAME):v$(VERSION) .

build-no-cache:
	sudo docker build -t ericmanlol/$(PROJECT_NAME):latest \
		-t ericmanlol/$(PROJECT_NAME):v$(VERSION) .

nv:
	curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs \
		https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
	ln -s $(PWD)/neovim/init.vim ~/.config/nvim/init.vim 

run:
	@echo running
	sudo docker run -it --volume $(PWD):/$(PROJECT_NAME) \
		--name nv --rm -i -t ericmanlol/$(PROJECT_NAME):latest


