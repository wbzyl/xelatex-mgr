TEX=xelatex
BIBTEX=bibtex

%.pdf : %.tex
	$(TEX) $* 

bib :
	$(TEX) szablon-bib
	$(BIBTEX) szablon-bib 
	$(TEX) szablon-bib
	$(TEX) szablon-bib

amsrefs :
	$(TEX) szablon-amsrefs
	$(BIBTEX) szablon-amsrefs 
	$(TEX) szablon-amsrefs
	$(TEX) szablon-amsrefs

clean : 
	rm -rf *.{log,aux,out,lot,lof,ilg,toc,blg} *~

xclean : clean
	rm -rf *.{ind,pdf,idx,bbl} 
