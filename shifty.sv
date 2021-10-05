`include "dec_decoder.sv"



/* verilator lint_off UNUSED */

module shifty(input bit [191:0] hash, output byte seed);
    byte seed_upper,
         seed_lower;

    dec_decoder dd1(hash[7:0], seed_upper);
    dec_decoder dd2(hash[15:8], seed_lower);

    assign seed = 10 * seed_upper + seed_lower;

    // ...
endmodule
