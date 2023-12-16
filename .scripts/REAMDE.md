# Scripts

Scripts called from the Makefile.
Call them from the root directory via the Makefile instead of from here:

```bash
make diff COMPARE_TARGET=test-project PROJECT=./baremetal
```

It's a hidden directory so that it's easy for bash scripts to skip:

```bash
# `.scripts` will be skipped here, like `.git` etc.
for dir in */; do
```