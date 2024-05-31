DOC=ena-authorization-00.pdf
SRC := $(wildcard introduktion/*_*.md) $(wildcard architecture/*_*.md)

.PHONY: all $(DOC)

all: $(DOC)

$(DOC): $(SRC)
	pandoc < $(SRC) -o $@

clean:
	rm -f $(DOC)
