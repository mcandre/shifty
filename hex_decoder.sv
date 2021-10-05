module hex_decoder(input byte x, output byte y);
    assign y = x - (x[6] ? 55 : 48);
endmodule
