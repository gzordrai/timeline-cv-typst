common_dependencies = template/main-cv.typ template/metadata.toml

all: alan-turing-en.pdf alan-turing-fr.pdf

alan-turing-en.pdf: $(common_dependencies) $(shell find en -type f) 
	typst c template/main-cv.typ alan-turing-en.pdf --input=lang=en --root ..

alan-turing-fr.pdf: $(common_dependencies) $(shell find fr -type f)
	typst c template/main-cv.typ alan-turing-fr.pdf --input=lang=fr --root ..

clean:
	rm -f *.pdf