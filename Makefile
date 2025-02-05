.DEFAULT_GOAL := help
SHELL := /usr/bin/env bash
MAKEFLAGS += --no-builtin-rules
MAKEFLAGS += --no-builtin-variables


.PHONY: help init install generate format lint clean publish

help: ## list available commands
	@awk 'BEGIN {FS = ":.*?## "} /^[a-zA-Z_-]+:.*?## / {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}' $(MAKEFILE_LIST)

init: ## verify that all the required commands are already installed
	@if [ -z "$$CI" ]; then \
		function cmd { \
			if ! command -v "$$1" &>/dev/null ; then \
				echo "warning: missing required command in PATH: $$1" >&2 ;\
			fi \
		} ;\
		cmd dart;\
		cmd flutter;\
		cmd openapi-generator;\
		cmd prettier;\
	fi

install: init ## Install dependencies
	dart pub get

generate: init ## Generate SDK from OpenAPI schema
	rm -rf doc/ lib/
	openapi-generator generate -c openapi-generator.yaml

format: init ## Format all files
	dart format .
	prettier --write '**/*.{md,json,yaml,yml}'

lint: init ## Run static code analysis
	dart analyze

clean: ## Clean temporary files
	rm -rf .dart_tool
	rm -rf .packages
	rm -rf build
	rm -rf coverage
	rm -rf test-results
	rm -rf doc

publish: init
	# Check for errors before publishing and then publish to pub.dev
	dart pub publish --dry-run
	dart pub publish
