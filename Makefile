SCRIPTS_DIR := .scripts

clean:
	git clean -fxd -e .env

install-dedupe:
	cd $(SCRIPTS_DIR) && ./install_dedupe.sh
