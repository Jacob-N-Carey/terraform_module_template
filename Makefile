NAME = terraform_module_template
VERSION := 0.0.0

SHELL := /bin/bash

.PHONY: help all

help:
	@awk 'BEGIN {FS = ":.*?## "} /^[a-zA-Z_-]+:.?## / {printf "\033[36m%-20s\033[0m %s\n", $$1, $$2}' ${MAKEFILE_LIST}

.DEFAULT_GOAL := help

setup:
	terraform init
	pre-commit install

lint:
	git add -A 
	pre-commit run
	git add -A 

lint:
	git add -A 
	pre-commit run --all-files
	git add -A 

release:
	git tag v${VERSION}
	git push --tag

clean:
	@rm -f .terraform.lock.hcl
	@rm -rf .terraform
