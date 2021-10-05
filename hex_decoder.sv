module hex_decoder(input byte x, output byte y);
    always begin
        if (x[6])
            assign y = x - 55;
        else
            assign y = x - 48;
    end
endmodule
