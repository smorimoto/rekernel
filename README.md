# rekernel

[![PRs Welcome](https://img.shields.io/badge/PRs-welcome-brightgreen.svg?style=flat-square)](http://makeapullrequest.com)
[![GitHub](https://img.shields.io/github/license/imbsky/dvm?color=brightgreen&style=flat-square)](https://github.com/imbsky/dvm/blob/master/LICENSE)

## Overview

A minimal setup for writing Unikernels in ReasonML.

## What is Unikernel

> If you aren't familiar with the concept of unikernels then there's a decent
> Wikipedia [page](https://en.wikipedia.org/wiki/Unikernel) on the subject to
> read. You are encouraged to read about them or watch some
> [videos](https://www.youtube.com/results?search_query=unikernel) to learn
> more.
>
> Unikernels are minimalist operating systems that consist only of your
> application and the libraries needed at runtime. One feature often needed for
> an application is the concept of files on disk. In a general-purpose OS, the
> filesystem and shell are always there underneath your application. If your
> application is 100% network-based and you don't need a file-system, then in a
> unikernel you wouldn't include the library for accessing files. This
> eliminates dead code that is
> [often](https://www.cvedetails.com/product/47/Linux-Linux-Kernel.html?vendor_id=33)
> [vulnerable](https://www.cvedetails.com/product/21050/GNU-Bash.html?vendor_id=72)
> and would otherwise be there waiting for hackers.
>
> MirageOS is an OCaml unikernel development kit that targets many different
> platforms. Your code can be developed on a normal general-purpose desktop
> operating system. Applications built with MirageOS are very flexible and can
> be deployed on the cloud using KVM, Xen, or even static POSIX binaries. In the
> case of POSIX deployments, MirageOS stops being a unikernel. But this is a
> great feature in that we can test the application on our desktop and deploy it
> in disguise on Kubernetes.
>
> MirageOS consists of a command line utility and a set of libraries that
> enables you to build a stand-alone OS. Once built, your application IS the
> whole operating system. The `mirage` command line utility allows you to
> configure your target deployment environment on the fly. You can decide where
> you would like to run your OS after you've written the code and tested it on
> your desktop.
>
> There's very little attack surface on a unikernel. This is attractive.
> Firstly, your OS isn't "the droids you are looking for" when it comes to
> hackers. Secondly, there's no shell or extra services running in your OS. Even
> if a hacker could probe your application's services, they will likely not be
> able to gain elevated general privileges (E.G., root) on your OS.
>
> For years, even during the peak of Bitcoin's price in 2017, there was a
> MirageOS Unikernel [pinata](https://mirage.io/blog/bitcoin-pinata-results)
> running with 10 bitcoin inside. Even with nearly \$200,000.00 USD hanging out
> there on the internet and a public challenge to steal them, nobody was able to
> do so. I think this is a great testament to the security aspects of
> unikernels. Nothing is foolproof but this is definitely a step in the right
> direction. - [dysinger/restack](https://github.com/dysinger/restack)

## Note to anyone who happens to find this repository

I have confirmed that you can build on macOS, but I don't think you can probably
build on another operating system without extra steps. This is a repository I
created to explain to my friends who use macOS and I don't plan to provide much
support. If you are a user of another operating system, you probably need to
manually rewrite the dune config file. But, Mirage will support Dune soon, so
these extra steps will no longer be necessary. And the code was stolen from Tim
Dysinger's [restack](https://github.com/dysinger/restack) repository.

## Build instructions

See the file [BUILD.md](BUILD.md) for build instructions.

## Bug reports and user feedback

Please report bugs using the issue tracker at
<https://github.com/imbsky/rekernel/issues>.

## License

Licensed under the
[Apache License, Version 2.0](https://www.apache.org/licenses/LICENSE-2.0).
