MAIN=szablon

TEX=xelatex
BIBTEX=bibtex

%.pdf : %.tex
	$(TEX) $* 

all :
	$(TEX) $(MAIN) 
	$(BIBTEX) $(MAIN) 
	$(TEX) $(MAIN) 
	$(TEX) $(MAIN) 

clean : 
	rm -f $(MAIN).{log,aux,out,lot,lof,ilg,toc,blg} *~

xclean : clean
	rm -f $(MAIN).{ind,pdf,idx,bbl} 
