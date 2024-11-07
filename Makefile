ALL_COMPONENTS := $(shell find . -maxdepth 1 -type d -not -path './.*' -and -not -path ".")

build-all:
	@for dir in $(ALL_COMPONENTS) ; do \
		$(MAKE) -C $$dir ; \
	done

clean-all:
	@for dir in $(ALL_COMPONENTS) ; do \
		$(MAKE) -C $$dir clean ; \
	done

.PHONY: build-all clean-all
