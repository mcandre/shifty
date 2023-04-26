# BUILDTIME REQUIREMENTS

* [g++](https://gcc.gnu.org/) 9+
* [Python](https://www.python.org/) 3.11.2+
* [Rust](https://www.rust-lang.org/en-US/) 1.68.2+
* [verilator](https://www.veripool.org/verilator/) 4.212-48-g2560fc86 or higher
* [GNU findutils](https://www.gnu.org/software/findutils/)
* a POSIX compliant [make](https://pubs.opengroup.org/onlinepubs/9699919799/utilities/make.html) implementation (e.g. GNU make, BSD make, etc.)
* Provision additional dev tools with `make -f install.mk`

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
