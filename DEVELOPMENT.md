# BUILDTIME REQUIREMENTS

* [g++](https://gcc.gnu.org/) 9+
* [POSIX](https://pubs.opengroup.org/onlinepubs/9799919799/) compatible [make](https://en.wikipedia.org/wiki/Make_(software))
* [Python](https://www.python.org/) 3.12.1+
* [Rust](https://www.rust-lang.org/en-US/) 1.75.0+
* [Snyk](https://snyk.io/)
* [verilator](https://www.veripool.org/verilator/) 4.212-48-g2560fc86 or higher
* Provision additional dev tools with `make -f install.mk [-j 4]`

## Recommended

* [ASDF](https://asdf-vm.com/) 0.10 (run `asdf reshim` after provisioning)
* [direnv](https://direnv.net/) 2
* an [FPGA board](https://www.amazon.com/FPGA-Boards/s?k=FPGA+Boards)
* [GNU](https://www.gnu.org/)/[BSD](https://en.wikipedia.org/wiki/Berkeley_Software_Distribution) [make](https://en.wikipedia.org/wiki/Make_(software))
* a [UNIX](https://en.wikipedia.org/wiki/Unix)-like environment

# AUDIT

```console
$ make audit
```

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
