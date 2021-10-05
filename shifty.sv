`include "hex_decoder.sv"



/* verilator lint_off UNUSED */

module shifty(input bit [191:0] hash, output byte seed);
    byte seed_upper,
         seed_lower;

    hex_decoder dd1(hash[7:0], seed_upper);
    hex_decoder dd2(hash[15:8], seed_lower);

    assign seed = 16 * seed_upper + seed_lower;

    // ...
endmodule
