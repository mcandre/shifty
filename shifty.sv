`include "dec_decoder.sv"
`include "hex_decoder.sv"

module shifty(input bit [191:0] hash, output bit [87:0] password);
    bit [215:0] secret = {
        8'h73, 8'h42, 8'h55, 8'h53,
        8'h48, 8'h44, 8'h4b, 8'h4a,
        8'h64, 8'h6c, 8'h6b, 8'h72,
        8'h77, 8'h65, 8'h79, 8'h69,
        8'h2e, 8'h2c, 8'h41, 8'h6f,
        8'h66, 8'h6b, 8'h3b, 8'h64,
        8'h66, 8'h73, 8'h64
    };

    byte seed_upper,
         seed_lower,
         seed;
    dec_decoder dd1(hash[7:0], seed_upper);
    dec_decoder dd2(hash[15:8], seed_lower);
    assign seed = 10 * seed_upper + seed_lower;
    bit [87:0] ciphertext,
               key;
    assign key = secret[seed*8+:88];
    genvar i;

    generate
        for (i = 0; i < 11; i++) begin
            byte data_upper,
                data_lower;

            hex_decoder hh1(hash[i*16+23:i*16+16], data_upper);
            hex_decoder hh2(hash[i*16+31:i*16+24], data_lower);

            assign ciphertext[i*8+7:i*8] = 16 * data_upper + data_lower;
        end
    endgenerate

    assign password = ciphertext ^ key;
endmodule
