module AND_Gate(o , A , B, C);

input A, B, C;
output o;

and ndd(o, A, B, C);

endmodule

module NOT_Gate(o, A);

input A;
output o;

not ot(o, A);

endmodule

module Decoder_TestBench();

reg A0, A1, A2;
wire z0, z1, z2, z3, z4, z5, z6, z7, NA0, NA1, NA2;

NOT_Gate nt(NA0, A0);
NOT_Gate ntt(NA1, A1);
NOT_Gate nttt(NA2, A2);

AND_Gate nd(z0, NA0, NA1, NA2);
AND_Gate ndd(z1, A0, NA1, NA2);
AND_Gate nddd(z2, NA0, A1, NA2);
AND_Gate ndddd(z3, A0, A1, NA2);
AND_Gate nddddd(z4, NA0, NA1, A2);
AND_Gate ndddddd(z5, A0, NA1, A2);
AND_Gate nddddddd(z6, NA0, A1, A2);
AND_Gate ndddddddd(z7, A0, A1, A2);

initial
begin
A0 = 0; A1 = 0; A2 = 0;
#50 A0 = 1; A1 = 0; A2 = 0;
#50 A0 = 0; A1 = 1; A2 = 0;
#50 A0 = 1; A1 = 1; A2 = 0;
#50 A0 = 0; A1 = 0; A2 = 1;
#50 A0 = 1; A1 = 0; A2 = 1;
#50 A0 = 0; A1 = 1; A2 = 1;
#50 A0 = 1; A1 = 1; A2 = 1;

end

endmodule

