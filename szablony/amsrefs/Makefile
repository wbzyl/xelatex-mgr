MAIN=szablon

TEX=xelatex
BIBTEX=bibtex

%.pdf : %.tex
	$(TEX) $* 

all :
	$(TEX) $(MAIN)
	$(TEX) $(MAIN)

clean : 
	rm -rf $(MAIN).{log,aux,out,lot,lof,ilg,toc,blg} *~

xclean : clean
	rm -rf $(MAIN).{ind,pdf,idx,bbl} 
