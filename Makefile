.POSIX:
PREFIX=/usr
install:
	mkdir -pv $(DESTDIR)$(PREFIX)/bin/
	cp shcolorlib.in $(DESTDIR)$(PREFIX)/bin/shcolorlib

test:
	sh shcolorlib.in run_time_test
	sh shcolorlib.in run_assertion_test

.PHONY: install test
