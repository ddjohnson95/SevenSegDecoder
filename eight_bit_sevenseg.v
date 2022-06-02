module eight_bit_sevenseg(in,hundreds_sevenseg,tens_sevenseg,ones_sevenseg);

input [7:0] in;
output wire [6:0] hundreds_sevenseg;
output wire [6:0] tens_sevenseg;
output wire [6:0] ones_sevenseg; 

wire [3:0] hundreds;
wire [3:0] tens;
wire [3:0] ones;

assign hundreds[3:2] = 0;

eight_bit_bcd U1(in, ones, tens, hundreds[1:0]);

decoder_one_digit U2(hundreds, hundreds_sevenseg);
decoder_one_digit U3(tens, tens_sevenseg);
decoder_one_digit U4(ones, ones_sevenseg);

endmodule