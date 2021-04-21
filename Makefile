.POSIX:
PREFIX=/usr
TARGET=shcolorlib

all: $(TARGET)

$(TARGET):
	cp shcolorlib.in $(TARGET)

install: $(TARGET)
	mkdir -pv $(DESTDIR)$(PREFIX)/bin/
	cp $(TARGET) $(DESTDIR)$(PREFIX)/bin/$(TARGET)

test:
	sh shcolorlib.in run_time_test
	sh shcolorlib.in run_assertion_test

clean:
	rm $(TARGET)

.PHONY: install test clean
