module OR_Gate(o ,A, B);

input A, B;
output o;

or orrrr(o, A, B);

endmodule


module HA(sum, carry, A, B);

input A, B;
output sum, carry;

xor rr(sum, A, B);
and nd(carry, A, B);

endmodule


module FA_TestBench();

reg A, B, Cin;
wire S1, C1, Sum, C2, Carry ;

HA haaa (S1, C1, A, B);
HA ha (Sum, C2, S1, Cin);

OR_Gate orr (Carry, C1, C2);

initial
begin
A = 0; B = 0; Cin = 0;
#50 A = 0; B = 1; Cin = 0;
#50 A = 1; B = 0; Cin = 0;
#50 A = 1; B = 1; Cin = 0;
end

endmodule
