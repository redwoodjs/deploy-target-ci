SCRIPTS_DIR := .scripts

# Cleans all projects and drops all databases.
clean:
	git clean -fxd -e .env
	psql -t -c "SELECT datname FROM pg_database WHERE datname LIKE 'deploy-target-%' AND datistemplate = false;" | \
		xargs dropdb

# Runs the foreach script, which does something for each project
# (right now you have to edit the foreach script to change what it does).
foreach:
	cd $(SCRIPTS_DIR) && ./foreach.sh

# Install and dedupe all projects.
install-dedupe:
	cd $(SCRIPTS_DIR) && ./install_dedupe.sh

# Run CI on all projects.
ci:
	cd $(SCRIPTS_DIR) && ./ci.sh

# Open a file across all deploy target CI projects:
# 
# ```
# make open FILE=.env.defaults
# ```
open:
	find . -name '$(FILE)' | xargs code

# Diff a deploy target CI project with the test project.
# Requires [Beyond Compare](https://www.scootersoftware.com).
#
# ```
# make diff COMPARE_TARGET=(test-project|crwa) PROJECT=./baremetal
# ```
diff:
	cd $(SCRIPTS_DIR) && ./diff.sh $(COMPARE_TARGET) $(PROJECT)

# Gets a project into working shape:
#
# ```
# make workon PROJECT=baremetal
# cd baremetal
# yarn rw dev
# ```
workon: clean
	cd $(PROJECT) && \
		yarn install && \
		yarn rw prisma migrate dev && \
		echo "SESSION_SECRET=$$(yarn rw g secret --raw)" > .env
