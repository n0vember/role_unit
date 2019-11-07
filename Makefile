TST_DIR=tests
BASH_UNIT=bash_unit
TST_FILES=$(wildcard $(TST_DIR)/tests_*)
TST_NAMES=$(patsubst %,%.name,$(TST_FILES))

tests: $(TST_FILES)

#debug:
#	if [ -z "${RU_CONF}" ] ; then NO_RU_CONF=1 ; fi
#	export RU_DEBUG=1
#	# ???

$(TST_FILES):
	$(TST_DIR)/$(BASH_UNIT) $@

.PHONY: tests $(TST_FILES)
