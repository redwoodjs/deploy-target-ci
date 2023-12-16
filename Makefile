SCRIPTS_DIR := .scripts

clean:
	git clean -fxd -e .env

install-dedupe:
	cd $(SCRIPTS_DIR) && ./install_dedupe.sh

local-ci:
	cd $(SCRIPTS_DIR) && ./local_ci.sh

# ```
# make open FILE=.env.defaults
# ```
open:
	find . -name '$(FILE)' | xargs code

# TODO: diff