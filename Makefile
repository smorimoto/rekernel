clean::
	rm -f .mirage.config config.ml dune.build dune.config key_gen.ml main.ml \
					mirage-unikernel-*.opam myocamlbuild.ml

config::
	mv dune dune.copy
	mv dune-project dune-project.copy
	mv Makefile Makefile.copy
	esy refmt configure.re --print=ml > config.ml
	esy mirage configure
	mv dune.copy dune
	mv dune-project.copy dune-project
	mv Makefile.copy Makefile

build:: clean config
	rm -f mirage-unikernel-*.opam
	esy dune build --for-release-of-packages=rekernel
