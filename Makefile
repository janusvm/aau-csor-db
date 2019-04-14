
# Main files
SLIDES_RMD := $(wildcard slides/*.Rmd)
SLIDES_HTML := $(SLIDES_RMD:.Rmd=.html)
HANDIN_RMD = exercises/self-study/handin.Rmd
HANDIN_HTML := $(HANDIN_RMD:.Rmd=.html)

# Input files
RMD_INPUT := $(wildcard slides/input/*.Rmd)

# Rules ------------------------------------------------------------------------

all: handin slides

handin: $(HANDIN_HTML)

slides: $(SLIDES_HTML)

define SLIDE_RULE
$T: $(shell grep -hoE '\binput/.+\.Rmd' $(T:.html=.Rmd)
      | sort -u | sed -e 's/^/slides\//g' |  paste -s -d ' ')
endef

$(foreach T,$(SLIDES_HTML),$(eval $(SLIDE_RULE)))

$(SLIDES_HTML): %.html: %.Rmd
	Rscript -e "rmarkdown::render('$<', 'xaringan::moon_reader')"

$(HANDIN_HTML): $(HANDIN_RMD)
	Rscript -e "rmarkdown::render('$<')"

clean:
	rm -f $(SLIDES_HTML)
	rm -f $(HANDIN_HTML)

.PHONY: clean slides handin all
