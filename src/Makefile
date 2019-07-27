CC = gcc
CFLAGS = -Wall `idris --include` `pkg-config --cflags SDL2_gfx`

.PHONY: all
all: Graphics/Config.idr sdl2.o

sdl2.o: Graphics/Config.idr sdl2.c sdl2.h

Graphics/Config.idr:
	./gen-config

.PHONY: clean
clean:
	rm -f Graphics/Config.idr sdl2.o
