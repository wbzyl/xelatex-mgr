BOOK=magisterka

TEX=xelatex
BIBTEX=bibtex

.PHONY: pdf

%.pdf : %.tex
	$(TEX) $*

# %.pdf : %.tex
# 	$(TEX) -shell-escape $*

mgr :
	$(TEX) $(BOOK)
	$(BIBTEX) $(BOOK)
	$(TEX) $(BOOK)
	$(TEX) $(BOOK)

# mgr :
# 	$(TEX) -shell-escape $(BOOK)
# 	$(BIBTEX) $(BOOK)
# 	$(TEX) -shell-escape $(BOOK)
# 	$(TEX) -shell-escape $(BOOK)

clean :
	rm -rf *.{log,aux,out,lot,lof,ilg,toc,blg,synctex.gz} *~

xclean : clean
	rm -rf *.{ind,pdf,idx,bbl}
