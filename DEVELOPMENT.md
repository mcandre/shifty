# BUILDTIME REQUIREMENTS

* [g++](https://gcc.gnu.org/) 9+
* [GNU](https://www.gnu.org/software/make/) / [BSD](https://man.freebsd.org/cgi/man.cgi?make(1)) make
* [Python](https://www.python.org/) 3.12.1+
* [Rust](https://www.rust-lang.org/en-US/) 1.75.0+
* [Snyk](https://snyk.io/)
* [verilator](https://www.veripool.org/verilator/) 4.212-48-g2560fc86 or higher
* Provision additional dev tools with `make -j 4 -f install.mk`

## Recommended

* UNIX
* an [FPGA board](https://www.amazon.com/FPGA-Boards/s?k=FPGA+Boards)
* [ASDF](https://asdf-vm.com/) 0.10 (run `asdf reshim` after provisioning)
* [direnv](https://direnv.net/) 2

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
