SUBDIRS := max_example prime_oracle number_oracles image_oracles

all: $(SUBDIRS)
$(SUBDIRS):
	$(MAKE) -C $@

.PHONY: all $(SUBDIRS)

