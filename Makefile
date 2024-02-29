# This Makefile is for running commands across all deploy target CI projects.

# All projects
# ------------

# Cleans all projects and drops all databases
clean:
	git clean -fxd -e .env
	psql -t -c "SELECT datname FROM pg_database WHERE datname LIKE 'deploy-target-%' AND datistemplate = false;" | \
		xargs -I {} dropdb {}

# Install and dedupe all projects
install-dedupe:
	cd .scripts && ./install_dedupe.sh

# Upgrade all projects to the latest `@next`
upgrade:
	cd .scripts && ./upgrade.sh

# Run CI on all projects
ci:
	cd .scripts && ./ci.sh

# Runs the foreach script, which does something for each project.
# Right now you have to edit the foreach script to change what it does.
foreach:
	cd .scripts && ./foreach.sh

# Open a file across all deploy target CI projects:
# 
# ```
# make open FILE=.env.defaults
# ```
open:
	find . -name '$(FILE)' | xargs code

# Specific projects
# -----------------

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

# Diff a deploy target CI project with the test project.
# Requires [Beyond Compare](https://www.scootersoftware.com)
#
# ```
# # Compare with the test project
# make diff COMPARE_TARGET=test-project PROJECT=./baremetal
# # Compare with CRWA
# make diff COMPARE_TARGET=crwa PROJECT=./baremetal
# ```
diff:
	cd .scripts && ./diff.sh $(COMPARE_TARGET) $(PROJECT)
