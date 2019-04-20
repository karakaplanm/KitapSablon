ifeq (chapter,$(firstword $(MAKECMDGOALS)))
  RUN_ARGS := $(wordlist 2,$(words $(MAKECMDGOALS)),$(MAKECMDGOALS))
  $(eval $(RUN_ARGS):;@:)
endif


.PHONY: chapter
chapter:
	@echo $(RUN_ARGS)
	pdflatex kitap.tex chapter$(RUN_ARGS)
	evince kitap.pdf &

bolum:
	@echo $(RUN_ARGS)
	pdflatex kitap.tex chapter$(RUN_ARGS)
	evince kitap.pdf &

kitap:
	rm -f *.mw  *.toc *.aux */*.aux  *.err */*.err */*.out */*.log *.log *.idx *.ind *.out
	pdflatex kitap.tex all
	evince kitap.pdf &
clean:
	rm -f *.mw  *.toc *.aux */*.aux  *.err */*.err */*.out */*.log *.log *.idx *.ind *.out

