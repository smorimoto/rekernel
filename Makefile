objects = .mirage.config config.ml dune.build dune.config key_gen.ml main.ml \
					mirage-unikernel-*.opam myocamlbuild.ml

clean::
	rm -rf $(objects)

config::
	rm -rf dune dune-project
	esy refmt configure.re --parse=re --print=ml > config.ml
	esy mirage configure
	git checkout dune dune-project Makefile

build:: clean config
	rm -rf mirage-unikernel-*.opam
	esy dune build --for-release-of-packages=rekernel
