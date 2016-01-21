# Copyright (c) Geoffrey Lentner 2015. All Rights Reserved.
# latex/Makefile

Name     := Lentner-$(shell date +"%Y-%m-%d")
Sections := $(shell find . -type f -path "./Source/*.tex")

Compile  := /Library/TeX/texbin/pdflatex --output-directory Build Source/Main.tex
Bibtex   := /Library/TeX/texbin/bibtex Build/Main


Main: PDF
	cp Build/Main.pdf ./$(Name).pdf

PDF: $(Sections)
	$(Compile)

BIB: Source/Main.bib
	cp Source/Main.bib Build/
	$(Compile) && $(Bibtex)
	$(Compile) && $(Compile)

clean:
	rm -f Build/Main.*
