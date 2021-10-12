SHELL := /bin/bash

VERSION := localbuild-unsafe

USER ?= $(shell whoami)

PROJECT_NAME = $(notdir $(PWD))

NCONFIGS = init mappings autocmd

.PHONY : br build nv run all build-no-cache

all: build run
br: all
brc: build-no-cache run

build:
	sudo docker build -t $(USER)/$(PROJECT_NAME):latest \
		-t $(USER)/$(PROJECT_NAME):v$(VERSION) .

build-no-cache:
	sudo docker build --no-cache -t $(USER)/$(PROJECT_NAME):latest \
		-t $(USER)/$(PROJECT_NAME):v$(VERSION) .

nv:
	for nconfig in $(NCONFIGS); do \
		ln -s ${PWD}/nvim/$${nconfig}.vim ~/.config/nvim/$${nconfig}.vim; \
	done

run:
	@echo running
	sudo docker run -it --volume $(PWD):/$(PROJECT_NAME) \
		--name nv --rm -i -t $(USER)/$(PROJECT_NAME):latest


