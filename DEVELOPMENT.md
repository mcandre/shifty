# BUILDTIME REQUIREMENTS

* [g++](https://gcc.gnu.org/) 9+
* [verilator](https://www.veripool.org/verilator/) 4.212-48-g2560fc86 or higher
* [make](https://pubs.opengroup.org/onlinepubs/009695299/utilities/make.html)
* [GNU findutils](https://www.gnu.org/software/findutils/)
* [Go](https://go.dev/) 1.20.2+
* [Python](https://www.python.org/) 3.11.2+
* a POSIX compliant [make](https://pubs.opengroup.org/onlinepubs/9699919799/utilities/make.html) implementation (e.g. GNU make, BSD make, etc.)
* a POSIX compliant [sh](https://pubs.opengroup.org/onlinepubs/9699919799/utilities/sh.html) implementation (e.g., bash, ksh, zsh, etc.)
* Provision additional dev tools with `./install`

## Recommended

* UNIX
* an [FPGA board](https://www.amazon.com/FPGA-Boards/s?k=FPGA+Boards)
* [ASDF](https://asdf-vm.com/) 0.10
* [direnv](https://direnv.net/) 2

# BUILD + TEST

```console
$ make
```

# INSTALL

```console
$ make install
```

# UNINSTALL

```console
$ make uninstall
```

# CLEAN

```console
$ make clean
```
