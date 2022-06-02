`timescale 1ns/100ps

module eight_bit_sevenseg_tb;

//inputs
reg [7:0] in;

//outputs
wire hundreds_sevenseg, tens_sevensegt, ones_sevensegt;

//Instantiate DUT
eight_bit_sevenseg DUT(.in(in), .hundreds_sevenseg(hundreds_sevensegt), .tens_sevenseg(tens_sevensegt), .ones_sevenseg(ones_sevensegt));

initial begin
in = 8'b00000000;

#10;

repeat (255)
#10 in = in + 8'b1;
end
endmodule