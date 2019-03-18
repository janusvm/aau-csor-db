
# Main files
SLIDES_RMD := $(wildcard slides/*.Rmd)
SLIDES_HTML := $(SLIDES_RMD:.Rmd=.html)

# Input files
RMD_INPUT := $(wildcard slides/input/*.Rmd)

# Rules ------------------------------------------------------------------------

define SLIDE_RULE
$T: $(shell grep -hoE '\binput/.+\.Rmd' $(T:.html=.Rmd)
      | sort -u | sed -e 's/^/slides\//g' |  paste -s -d ' ')
endef

$(foreach T,$(SLIDES_HTML),$(eval $(SLIDE_RULE)))

slides: $(SLIDES_HTML)

$(SLIDES_HTML): %.html: %.Rmd
	Rscript -e "rmarkdown::render('$<', 'xaringan::moon_reader')"

clean:
	rm -f $(SLIDES_HTML)

.PHONY: clean slides
