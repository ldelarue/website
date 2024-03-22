.DEFAULT_GOAL := help

.PHONY: lint
lint: ## Run linter
	@docker run -e RUN_LOCAL=true -e USE_FIND_ALGORITHM=true -v .:/tmp/lint ghcr.io/super-linter/super-linter:latest

# https://marmelab.com/blog/2016/02/29/auto-documented-makefile.html
.PHONY: help
help: ## Print all available commands
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'