#Makefile for pdb-cheatsheet
TARGET="pdb-cheatsheet"

all: png

pdf:
	@latexmk -pdf ${TARGET}.tex

png: pdf
	@pdftoppm -png ${TARGET}.pdf > ${TARGET}.png

live:
	@latexmk -pdf -pvc ${TARGET}.tex

clean:
	@latexmk -CA
	@rm -rf ${TARGET}.png
