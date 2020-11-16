targets = jvcf.pdf latex/jvcf.tex
all: $(targets)

clean:
	rm -f $(targets)

.PHONY: clean

latex/jvcf.tex: jvcf.md
	pandoc -o $@ $<

jvcf.pdf: jvcf.md
	pandoc --number-sections -o $@ $<
