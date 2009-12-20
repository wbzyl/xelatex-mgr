BOOK=magisterka

TEX=xelatex
BIBTEX=bibtex

.PHONY: pdf

%.pdf : %.tex
	$(TEX) $* 

mgr :
	$(TEX) $(BOOK)
	$(BIBTEX) $(BOOK)
	$(TEX) $(BOOK)
	$(TEX) $(BOOK)

clean : 
	rm -rf *.{log,aux,out,lot,lof,ilg,toc,blg} *~

xclean : clean
	rm -rf *.{ind,pdf,idx,bbl} 
