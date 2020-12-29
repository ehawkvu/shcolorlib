.POSIX:
PREFIX=/usr
install:
	mkdir -pv $(DESTDIR)$(PREFIX)/bin/
	cp shcolorlib.in $(DESTDIR)$(PREFIX)/bin/shcolorlib

.PHONY: install
