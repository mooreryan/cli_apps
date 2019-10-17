SRC=src
BIN=bin

CFLAGS=-Wall -g
LFLAGS=-lz

.PHONY: all
.PHONY: clean

all: filter_length filter_shorter_than seq_lengths

clean:
	rm -r $(BIN)/filter_length* $(BIN)/filter_shorter_than* $(BIN)/seq_lengths*

filter_length filter_shorter_than seq_lengths:
	$(CC) $(CFLAGS) $(LFLAGS) -o $(BIN)/$@ $(SRC)/$@.c
