PREFIX ?= /usr
BINDIR ?= $(PREFIX)/bin

SCRIPTS = chimera-bootstrap chimera-chroot genfstab

all:

install:
	install -d $(DESTDIR)$(BINDIR)
	for script in $(SCRIPTS); do \
		install -m 755 $$script $(DESTDIR)$(BINDIR); \
	done
