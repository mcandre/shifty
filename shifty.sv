module dec2byte(input byte x, output byte y)
    // ...
endmodule

module hex2byte(input byte x, output byte y)
    // ...
endmodule

module shifty(input byte [23:0] hash, output byte [10:0] password)
    byte seed_upper,
         seed_lower;

    dec2byte d2b(hash[0], seed_upper);
    dec2byte d2b(hash[1], seed_lower);

    byte seed = 10 * seed_upper + seed_lower;

    // ...
endmodule
