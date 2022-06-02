module decoder_one_digit(in1,out1);

input [3:0] in1;
output reg [6:0] out1;

always @ (in1)
case (in1)
    4'b0000 : out1 = 7'b1000000; //0
    4'b0001 : out1 = 7'b1111001; //1
    4'b0010 : out1 = 7'b0100100; //2
    4'b0011 : out1 = 7'b0110000; //3
    4'b0100 : out1 = 7'b0011001; //4
    4'b0101 : out1 = 7'b0010010; //5
    4'b0110 : out1 = 7'b0000010; //6
    4'b0111 : out1 = 7'b1111000; //7
    4'b1000 : out1 = 7'b0000000; //8
    4'b1001 : out1 = 7'b0010000; //9

    default : out1 = 7'b0000110; //E
endcase

endmodule
