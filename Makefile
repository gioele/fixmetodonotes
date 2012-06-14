.DEFAULT: all
.PHONY: all dist clean

TARGET_FILES = README fixmetodonotes.sty LICENSE

GIT_VERSION = $(shell git for-each-ref --sort='-*authordate' --format='%(tag) %(*authordate:short)' refs/tags | head -n 1)
VERSION = $(shell echo $(GIT_VERSION) | cut -d ' ' -f 1 | sed -e 's/^v//')
DATE= $(shell echo $(GIT_VERSION) | cut -d ' ' -f 2 | sed -e 's/-/\//g')
VERSION_INFO = $(DATE) v$(VERSION)

ARCHIVE_DIR = fixmetodonotes-$(VERSION)
ARCHIVE = fixmetodonotes-$(VERSION).tar.gz
ARCHIVE_FILES = $(addprefix $(ARCHIVE_DIR)/,$(TARGET_FILES))

all: dist

$(ARCHIVE_DIR):
	mkdir $(ARCHIVE_DIR)

$(ARCHIVE_DIR)/README: README.md | $(ARCHIVE_DIR)
	cp $< $@

$(ARCHIVE_DIR)/fixmetodonotes.sty: fixmetodonotes.sty | $(ARCHIVE_DIR)
	sed -e '2s#$$#[$(VERSION_INFO)]#' $< >| $@

$(ARCHIVE_DIR)/LICENSE: LICENSE | $(ARCHIVE_DIR)
	cp $< $@

$(ARCHIVE): $(ARCHIVE_FILES)
	tar -caf $(ARCHIVE) $(ARCHIVE_DIR)

dist: $(ARCHIVE)

clean:
	rm -f $(ARCHIVE)
	rm -f $(ARCHIVE_FILES)
	rmdir $(ARCHIVE_DIR)
