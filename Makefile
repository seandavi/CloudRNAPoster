all: CloudRNA.pdf

CloudRNA.pdf: CloudRNA.tex beamerthemeSD.sty
	xelatex CloudRNA.tex; xelatex CloudRNA.tex

CloudRNA.tex: CloudRNA.Rnw
	Rscript -e 'knitr::knit("CloudRNA.Rnw")'
