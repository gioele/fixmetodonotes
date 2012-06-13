.DEFAULT: all
.PHONY: all dist clean

VERSION = 0.1-dev

TARGET_FILES = README fixmetodonotes.sty LICENSE

ARCHIVE_DIR = fixmetodonotes-$(VERSION)
ARCHIVE = fixmetodonotes-$(VERSION).tar.gz
ARCHIVE_FILES = $(addprefix $(ARCHIVE_DIR)/,$(TARGET_FILES))

all: dist

$(ARCHIVE_DIR):
	mkdir $(ARCHIVE_DIR)

$(ARCHIVE_DIR)/README: README.md | $(ARCHIVE_DIR)
	cp README.md $(ARCHIVE_DIR)/README

$(ARCHIVE_DIR)/fixmetodonotes.sty: fixmetodonotes.sty | $(ARCHIVE_DIR)
	cp fixmetodonotes.sty $(ARCHIVE_DIR)/fixmetodonotes.sty

$(ARCHIVE_DIR)/LICENSE: LICENSE | $(ARCHIVE_DIR)
	cp LICENSE $(ARCHIVE_DIR)/LICENSE

$(ARCHIVE): $(ARCHIVE_FILES)
	tar -caf $(ARCHIVE) $(ARCHIVE_DIR)

dist: $(ARCHIVE)

clean:
	rm -f $(ARCHIVE)
	rm -f $(ARCHIVE_FILES)
	rmdir $(ARCHIVE_DIR)
