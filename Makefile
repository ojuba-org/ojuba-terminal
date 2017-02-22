DESTDIR?=
datadir?=$(DESTDIR)/usr/share
confdir?=$(DESTDIR)/etc
bindir?=$(DESTDIR)/usr/bin
polkit?=$(DESTDIR)/usr/share/polkit-1
INSTALL=install

all:
	echo "Use make install to install"

install:
	$(INSTALL) -d $(confdir)/profile.d/
	$(INSTALL) -d $(datadir)/shell-lang/languages/
	$(INSTALL) -d $(bindir)/
	$(INSTALL) -d $(polkit)/actions
	$(INSTALL) -d $(polkit)/rules.d
	$(INSTALL) -m 0644 etc/profile.d/ojuba-terminal.sh $(confdir)/profile.d/
	$(INSTALL) -m 0644 usr/share/shell-lang/languages/* $(datadir)/shell-lang/languages/
	$(INSTALL) -m 0755 usr/bin/shell-lang $(bindir)/
	$(INSTALL) -m 0644 usr/share/polkit-1/actions/org.ojuba.pkexec.setfont.policy $(polkit)/actions/
	$(INSTALL) -m 0644 usr/share/polkit-1/rules.d/org.ojuba.pkexec.setfont.rules $(polkit)/rules.d/
