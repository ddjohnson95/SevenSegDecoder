module eight_bit_bcd(in,ones,tens,hundreds);

input [7:0] in;

wire a = in[7];
wire b = in[6];
wire c = in[5];
wire d = in[4];
wire e = in[3];
wire f = in[2];
wire g = in[1];
wire h = in[0];

output wire [3:0] ones;
output wire [3:0] tens;
output wire [1:0] hundreds;

assign hundreds[0] = (a & ~b) | (a & ~c & ~d & ~e) | (~a & b & c & d) | (~a & b & c & f) | (~a & b & c & e);
assign hundreds[1] = (a & b & c) | (a & b & d) | (a & b & e);

assign tens[3] = (a & ~b & c & d & e) | (a & ~b & c & d & f) | (~a & b & c & ~d & ~e & ~f) | (a & b & ~c & ~d & ~e) | (~a & b & ~c & e & ~f & g & ~h) | (~a & b & ~c & d & h) | (~a & b & ~c & d & f) | (~a & b & ~c & d & ~g) | (~a & b & ~c & d & ~e);
assign tens[2] = (~a & b & ~c & ~d) | (a & c & d & ~e & ~f) | (a & b & c & d & e) | (a & b & c & d & f) | (a & ~b & ~c & e & f) | (a & ~b & ~c & d & e) | (a & ~b & ~c & d & f) | (a & ~b & d & ~e & ~f) | (~a & ~b & c & e) | (~b & c & ~d & e) | (a & ~b & c & ~d & ~e) | (~a & ~b & c & d & ~e) | (a & ~b & c & ~e & ~f) | (~b & c & d & ~e & ~f);
assign tens[1] = (a & c & ~d) | (a & b & ~c & d & e & f) | (~a & b & ~c & ~d & ~e) | (~a & b & ~c & ~d & e) | (~a & b & c & d & e) | (~a & c & d & e & f) | (a & ~b & ~d & ~f) | (~a & ~b & ~c & d & e) | (~a & ~b & ~c & d & f) | (~a & ~b & d & e & f) | (a & ~b & c & ~e & ~f) | (a & ~b & ~d & ~e) | (~b & c & ~d & ~e);
assign tens[0] = (b & ~c & ~d & ~e & f & g & h) | (~a & ~b & c & ~e & f) | (~a & c & d & ~e & f) | (a & b & ~d & ~e & f & g) | (a & ~c & ~d & ~e & f) | (a & ~c & ~e & f & g) | (a & b & ~c & ~e & f) | (~a & b & ~d & e & f & g) | (~a & ~c & ~d & e & f) | (~a & ~c & e & f & g) | (~a & b & ~c & e & f) | (a & ~b & ~c & d & e & f) | (a & ~b & d & e & f & g) | (a & b & c & e & f) | (a & c & ~d & e & f) | (a & c & e & f & g) | (~a & ~b & c & d & e & ~f) | (a & b & c & ~d & e & ~f) | (a & b & c & e & ~f & g) | (a & c & ~d & e & ~f & g) | (a & ~b & ~c & e & ~f) | (a & ~c & d & e & ~f) | (~a & b & ~c & ~d & e & ~f) | (~a & b & ~c & e & ~f & g) | (~a & ~c & ~d & e & ~f & g) | (a & b & ~c & ~d & ~e & ~f) | (~a & ~b & ~c & d & ~e & ~f) | (a & ~b & c & d & ~e & ~f) | (~a & b & c & ~e & ~f) | (~a & c & ~d & ~e & ~f) | (a & b & ~c & ~e & ~f & g) | (a & ~c & ~d & ~e & ~f & g) | (~a & c & ~e & ~f & g) | (~a & ~b & d & ~e & ~f & g) | (~b & c & d & ~e & ~f & g);

assign ones[3] = (~a & ~b & c & ~d & ~e & f & g) | (a & b & ~c & ~d & ~e & f & g) | (~a & b & c & d & ~e & f & g) | (a & b & c & ~d & e & f & g) | (~a & b & ~c & ~d & e & f & g) | (a & ~b & ~c & d & e & f & g) | (~a & b & c & ~d & ~e & ~f & g) | (a & ~b & ~c & ~d & e & ~f & g) | (a & b & ~c & d & e & ~f & g) | (~a & ~b & c & d & e & ~f & g) | (~a & ~b & ~c & d & ~e & ~f & g) | (a & ~b & c & d & ~e & ~f & g) | (a & b & c & ~d & ~e & f & ~g) | (~a & b & ~c & ~d & ~e & f & ~g) | (a & ~b & ~c & d & ~e & f & ~g) | (~a & b & c & ~d & e & f & ~g) | (~a & ~b & ~c & d & e & f & ~g) | (a & ~b & c & d & e & f & ~g) | (a & ~b & ~c & ~d & ~e & ~f & ~g) | (~a & ~b & c & d & ~e & ~f & ~g) | (a & b & ~c & d & ~e & ~f & ~g) | (~a & ~b & ~c & ~d & e & ~f & ~g) | (a & ~b & c & ~d & e & ~f & ~g) | (~a & b & ~c & d & e & ~f & ~g) | (a & b & c & d & e & ~f & ~g);
assign ones[2] = (~a & ~b & c & ~d & ~e & ~f & g) | (a & ~b & ~c & ~d & e & ~f & ~g) | (a & ~b & ~c & d & ~e & ~f) | (a & ~b & d & e & ~f & g) | (~b & ~c & d & e & ~f & g) | (a & ~b & d & ~e & ~f & ~g) | (~b & ~c & d & ~e & ~f & ~g) | (~a & ~b & d & e & ~f & ~g) | (~b & c & d & e & ~f & ~g) | (~a & ~b & c & d & ~e & f & g) | (a & ~b & ~c & d & e & f & ~g) | (~a & ~b & c & ~d & e & f) | (~a & ~b & ~d & ~e & f & ~g) | (~b & c & ~d & ~e & f & ~g) | (a & ~b & ~d & ~e & f & g) | (~b & ~c & ~d & ~e & f & g) | (~a & ~b & ~d & e & f & g) | (~b & c & ~d & e & f & g) | (~a & b & c & d & ~e & ~f & g) | (~a & b & ~d & ~e & ~f & ~g) | (b & c & ~d & ~e & ~f & ~g) | (a & b & ~d & ~e & ~f & g) | (b & ~c & ~d & ~e & ~f & g) | (a & b & ~c & d & e & ~f & ~g & h) | (b & ~c & d & e & ~f & ~g & ~h) | (~a & b & c & ~d & e & ~f) | (~a & b & ~d & e & ~f & g) | (b & c & ~d & e & ~f & g) | (a & b & ~c & ~d & ~e & f & ~g) | (a & b & ~c & ~d & e & f) | (a & b & ~d & e & f & ~g) | (b & ~c & ~d & e & f & ~g) | (~a & b & c & d & e & f) | (~a & b & d & ~e & f & ~g) | (b & c & d & ~e & f & ~g) | (a & b & d & ~e & f & g) | (b & ~c & d & ~e & f & g) | (~a & b & d & e & f & g) | (b & c & d & e & f & g);
assign ones[1] = (a & b & ~c & ~d & ~e & ~g & ~h) | (a & b & ~c & ~e & f & ~g) | (a & ~c & ~d & ~e & f & ~g) | (~a & ~b & ~c & d & ~e & ~f & ~g) | (a & ~b & c & d & ~e & ~f & ~g) | (~a & b & c & ~e & ~f & ~g) | (~a & c & ~d & ~e & ~f & ~g) | (~a & ~b & c & ~e & f & ~g) | (~a & c & d & ~e & f & ~g) | (~a & ~b & c & d & e & ~f & ~g) | (a & b & c & ~d & e & ~g) | (a & b & c & e & f & ~g) | (a & c & ~d & e & f & ~g) | (~a & b & ~c & ~d & e & ~g) | (~a & b & ~c & e & f & ~g) | (~a & ~c & ~d & e & f & ~g) | (a & ~b & ~c & d & e & ~g) | (a & ~b & ~c & e & ~f & ~g) | (a & ~c & d & e & ~f & ~g) | (a & ~b & ~c & d & ~e & ~f & g) | (~a & b & ~c & ~e & ~f & g) | (~a & ~c & ~d & ~e & ~f & g) | (~a & ~b & ~c & ~e & f & g) | (~a & ~c & d & ~e & f & g) | (~a & ~b & ~c & d & e & ~f & g) | (a & b & ~c & ~d & e & g) | (a & b & ~c & e & f & g) | (a & ~c & ~d & e & f & g) | (a & b & c & ~e & ~f & g) | (a & c & ~d & ~e & ~f & g) | (a & ~b & c & d & e & ~f & g) | (~a & b & c & e & ~f & g) | (~a & c & ~d & e & ~f & g) | (~a & b & c & ~d & ~e & f & g) | (a & ~b & c & ~e & f & g) | (a & c & d & ~e & f & g) | (~a & ~b & c & e & f & g) | (~a & c & d & e & f & g) | (~b & c & d & e & f & g & h);
assign ones[0] = h;

endmodule