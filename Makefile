NASM	:= /usr/local/bin/nasm
NASMOPT := -f macho64 $(OPT)

SRCS = $(wildcard *.asm)
PROGS = $(patsubst %.asm,%,$(SRCS))

all: $(PROGS)

%: %.asm
	@$(NASM) $(NASMOPT) -f macho64 -o $@.o $<
	@ld -macosx_version_min 10.8.0 -lSystem -o $@ $@.o
	@rm *.o

clean:
	@rm $(PROGS)
