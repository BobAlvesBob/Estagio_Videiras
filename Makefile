# =============================================================
# Makefile para compilar o relatório LaTeX com biber
# Uso: make          -> compila tudo
#      make clean    -> remove ficheiros auxiliares
#      make distclean -> remove tudo exceto .tex, .bib, .png
# =============================================================

MAIN   = main
LATEX  = pdflatex
BIBER  = biber
FLAGS  = -interaction=nonstopmode -shell-escape

.PHONY: all clean distclean

all:
	$(LATEX) $(FLAGS) $(MAIN).tex
	$(BIBER) $(MAIN)
	$(LATEX) $(FLAGS) $(MAIN).tex
	$(LATEX) $(FLAGS) $(MAIN).tex

clean:
	del /Q *.aux *.log *.toc *.lof *.lot *.out *.bbl *.bcf *.blg \
	       *.run.xml *.synctex.gz *.fls *.fdb_latexmk 2>nul
	del /Q capitulos\*.aux 2>nul

distclean: clean
	del /Q $(MAIN).pdf 2>nul
