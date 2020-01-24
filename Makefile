.PHONY: build
build: clean configure
	rm -f mirage-unikernel-*.opam
	esy dune build

.PHONY: clean
clean:
	rm -f .mirage.config config.ml dune.build dune.config key_gen.ml main.ml \
					mirage-unikernel-*.opam myocamlbuild.ml

.PHONY: configure
configure:
	mv dune dune.copy
	mv dune-project dune-project.copy
	mv Makefile Makefile.copy
	esy refmt configure.re --print=ml > config.ml
	esy mirage configure
	mv dune.copy dune
	mv dune-project.copy dune-project
	mv Makefile.copy Makefile
