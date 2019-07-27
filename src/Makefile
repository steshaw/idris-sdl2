CC = gcc
CFLAGS = -Wall `idris --include` `pkg-config --cflags SDL2_gfx`

.PHONY: all
all: Graphics/Config.idr sdl2.o

sdl2.o: Graphics/Config.idr sdl2.c sdl2.h

Graphics/Config.idr:
#	@./gen-config
	@echo "%flag C \"`pkg-config --libs sdl2`\"" > Graphics/Config.idr
	@echo "%flag C \"`pkg-config --cflags sdl2`\"" >> Graphics/Config.idr
	@echo "%flag C \"`pkg-config --libs SDL2_gfx`\"" >> Graphics/Config.idr
	@echo "%flag C \"`pkg-config --cflags SDL2_gfx`\"" >> Graphics/Config.idr

.PHONY: clean
clean:
	rm -f Graphics/Config.idr sdl2.o
