DESTDIR?=
datadir?=$(DESTDIR)/usr/share
confdir?=$(DESTDIR)/etc
bindir?=$(DESTDIR)/usr/bin
INSTALL=install

all:
	echo "Use make install to install"

install:
	$(INSTALL) -d $(confdir)/profile.d/
	$(INSTALL) -d $(datadir)/shell-lang/languages/
	$(INSTALL) -d $(bindir)/
	$(INSTALL) -m 0644 etc/profile.d/ojuba-terminal.sh $(confdir)/profile.d/
	$(INSTALL) -m 0644 usr/share/shell-lang/languages/* $(datadir)/shell-lang/languages/
	$(INSTALL) -m 0755 usr/bin/shell-lang $(bindir)/
