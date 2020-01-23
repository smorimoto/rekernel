# Build Instructions

You can build this yourself from the source and try it out.

## Building from source

### Prerequirements

Make sure you have the required dependencies installed:

- esy
  - Although if you're an expert in the OCaml ecosystem, not strictly required,
    we recommend it to get consistent installs across machines.

### Getting the source

You can clone the source from GitHub with

```bash
git clone https://github.com/imbsky/rekernel.git
```

You can complete the setup of your development environment with

```bash
cd rekernel
esy
```

You can build with

```bash
make build
```

You can execute with

```bash
esy x rekernel
```
