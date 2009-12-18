BOOK=wimgr

MKIDX=plmindex
LATEX=platex
PDFLATEX=pdfplatex
DVIPS=dvips -j0

.PHONY: ps pdf eps2pdf 

ps: 
	$(LATEX) $(BOOK)
	$(MKIDX) $(BOOK)
	$(DVIPS) $(BOOK)

pdf: eps2pdf
	$(PDFLATEX) $(BOOK) 
	$(MKIDX) $(BOOK)
	$(PDFLATEX) $(BOOK)

eps2pdf: 
	epstopdf fo-structure.eps
	epstopdf schemat.eps
	
clean: 
	rm -rf $(BOOK).{dvi,ps,log,aux,out,lot,lof,ilg,toc} *~
xclean: clean
	rm -rf $(BOOK).{ind,pdf,idx} 

a5ps:
	a5ps -s.75 -l21.0 -b-.9 -o14.7 $(BOOK)

a5: ps a5ps

