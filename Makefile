PREFIX ?= /usr
BINDIR ?= $(PREFIX)/bin

SCRIPTS = chimera-bootstrap chimera-chroot chimera-installer genfstab

all:

install:
	install -d $(DESTDIR)$(BINDIR)
	for script in $(SCRIPTS); do \
		install -m 755 $$script $(DESTDIR)$(BINDIR); \
	done
