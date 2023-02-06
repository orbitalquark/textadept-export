# Copyright 2016-2023 Mitchell. See LICENSE.

# Documentation.

ta = ../..
cwd = $(shell pwd)
docs: README.md
README.md: init.lua
	cd $(ta)/scripts && ldoc --filter markdowndoc.ldoc $(cwd)/$< > $(cwd)/$@
	sed -i -e '1,+4d' -e '6c# Export' -e '7d' -e 's/^##/#/;' $@

# Releases.

ifneq (, $(shell hg summary 2>/dev/null))
  archive = hg archive -X ".hg*" $(1)
else
  archive = git archive HEAD --prefix $(1)/ | tar -xf -
endif

release: export ; zip -r $<.zip $< -x "$</.git*" && rm -r $<
export: ; $(call archive,$@)
