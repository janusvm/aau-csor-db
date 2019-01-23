SLIDES_RMD := $(wildcard slides/*.Rmd)
SLIDES_HTML := $(SLIDES_RMD:.Rmd=.html)

$(SLIDES_HTML): %.html: %.Rmd
	Rscript -e "rmarkdown::render('$<', 'xaringan::moon_reader')"
