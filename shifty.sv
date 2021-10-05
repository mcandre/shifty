`include "hex_decoder.sv"

/* verilator lint_off UNUSED */

module shifty(input bit [191:0] hash, output bit [87:0] ciphertext);
    // byte seed_upper,
    //      seed_lower;

    // dec_decoder dd1(hash[7:0], seed_upper);
    // dec_decoder dd2(hash[15:8], seed_lower);

    // assign seed = 10 * seed_upper + seed_lower;

    // byte [10:0] hexpairs;

    genvar i;

    generate
        for (i = 0; i < 11; i++) begin
            byte data_upper,
                 data_lower;

            hex_decoder hh1(hash[i*8+23:i*8+16], data_upper);
            hex_decoder hh2(hash[i*8+31:i*8+24], data_lower);



            assign ciphertext[i*8+7:i*8] = 16 * data_upper + data_lower;


            // assign hexpairs[i] = 16 * data_upper + data_lower;
        end
    endgenerate

    // ...
endmodule
