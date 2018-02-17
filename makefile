RM=rm -rf

.SILENT:
.PHONY: all clean new

all:
	./gendoc.sh int

clean:
	$(RM) doc

new: clean all
