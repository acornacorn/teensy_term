all: teensy_term

CFLAGS = -g -Wall -Werror

teensy_term: teensy_term.c
	gcc $(CFLAGS) -o $@ $<

clean:
	rm -f teensy_term
