ugAdoc:=src/user-guide.adoc

html: index.html

all : index.html pdf

index.html : src/index.adoc $(ugAdoc)
	asciidoctor -b html src/index.adoc -o index.html

pdf : mindboard-user-guide.pdf
mindboard-user-guide.pdf: src/index.adoc $(ugAdoc)
	asciidoctor -r asciidoctor-pdf -b pdf src/index-pdf.adoc -o $@

clean :
	rm -f *.pdf index.html
