.POSIX:
.SILENT:
ALLTARGETS!=ls -a
.PHONY: $(ALLTARGETS)

all: python rust

python:
	python3 -m venv .venv
	.venv/bin/python3 -m pip install --upgrade pip setuptools
	.venv/bin/python3 -m pip install -r requirements.txt

rust:
	cargo install --force unmake@0.0.21
