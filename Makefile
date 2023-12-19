# INFO: Define complex commands/tasks here for ease of use.
#
# USAGE:
# Run `make build` to execute `dart run build_runner build`.
#
# DESCRIPTION:
# This target generates localization files.

.PHONY: build
build:
	@dart run build_runner build