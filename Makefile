ARTIFACT=obj_dir/Vshifty

all: test

$(ARTIFACT): main.cpp shifty.sv dec_decoder.sv hex_decoder.sv
	@verilator \
		-Wall \
		--cc \
		--exe \
		main.cpp \
		shifty.sv
	@make \
		-j \
		-C obj_dir \
		-f Vshifty.mk \
		Vshifty

test:
	$(ARTIFACT) "00091C080F5E"

install: $(ARTIFACT)
	cp $(ARTIFACT) ~/bin/shifty

uninstall:
	-rm ~/bin/shifty

clean:
	-rm -rf obj_dir
