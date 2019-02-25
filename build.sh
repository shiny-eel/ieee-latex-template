#!/usr/bin/env bash
pdflatex -synctex=1 -interaction=nonstopmode ieee-template.tex
"bibtex" build/%.aux
pdflatex -synctex=1 -interaction=nonstopmode ieee-template.tex
pdflatex -synctex=1 -interaction=nonstopmode ieee-template.tex
open ieee-template.pdf
