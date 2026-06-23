SLIDES = slides.md
OUTPUT = slides.pdf

# Use xelatex for correct Roboto font rendering (install: sudo apt install texlive-xetex).
# Falls back to pdflatex if xelatex is not available.

.PHONY: all clean

all: $(OUTPUT)

$(OUTPUT): $(SLIDES)
	@if command -v xelatex > /dev/null 2>&1; then \
		pandoc -t beamer --pdf-engine=xelatex -o $@ $<; \
	else \
		echo "xelatex not found, using pdflatex (fonts may differ)"; \
		pandoc -t beamer --pdf-engine=pdflatex -o $@ $<; \
	fi

clean:
	rm -f $(OUTPUT)
