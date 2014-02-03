#!/bin/make

targetdir=$(DESTDIR)/usr/bin/zmqserver-dir

all:
	npm install -d

install:
	mkdir --parents $(targetdir)
	cp --recursive node_modules $(targetdir)
	cp server.js $(targetdir)
	install scripts/zmqserver $(DESTDIR)/usr/bin

uninstall:
	@echo "We will forcefully remove everything from $(targetdir)!"
	rm --recursive --force $(targetdir)
	rm $(DESTDIR)/usr/bin/zmqserver

.PHONY: all install uninstall
