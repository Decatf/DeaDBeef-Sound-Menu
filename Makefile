all:
	gcc -shared -fPIC -std=c99 -Wall -O2 `pkg-config --cflags --libs gio-2.0 indicate` -o mpris.so mpris.c

install:
	install -d ~/.local/lib/deadbeef/
	install -m 0755 *.so ~/.local/lib/deadbeef/

clean:
	rm mpris.so

uninstall:
	rm ~/.local/lib/deadbeef/mpris.so
