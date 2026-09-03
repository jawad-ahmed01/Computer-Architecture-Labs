module Not(o, x);
input x;
output o;
not uut(o, x);
endmodule

module And(o, a, b);
input a; input b;
output o;
and d(o, a, b);
endmodule

module Or(o, a, b);
input a; input b;
output o;
or r(o, a, b);
endmodule;

module Nand(o, a, b);
input a, b;
output o;
nand (o, a, b);
endmodule

Computer
Organization &
Architecture Lab National University Fall 2026
(EL2012)

of Computer and Emerging
Sciences
Islamabad

Computer Organization & Architecture Lab NUCES, ISLAMABAD Page 3 of 18
module Nor(o, a, b);
input a, b;
output o;
nor (o, a, b);
endmodule

module Xor(o, a, b);
input a, b;
output o;
xor (o, a, b);
endmodule

module Xnor(o, a, b);
input a, b;
output o;
xnor (o, a, b);
endmodule

module NotTestBench();
reg x;
wire o;
Not nt(o, x);
initial
begin
x = 0;
#50 x = 1;
end
endmodule

module AndTestBench();
reg x; reg y;
wire o;
And nd(o, x, y);

Computer
Organization &
Architecture Lab National University Fall 2026
(EL2012)

of Computer and Emerging
Sciences
Islamabad

Computer Organization & Architecture Lab NUCES, ISLAMABAD Page 4 of 18
initial
begin
x = 0; y = 0;
#50 x = 0; y = 1;
#50 x = 1; y = 1;
#50 x = 1; y = 1;
end
endmodule;
module OrTestBench();
reg x; reg y;
wire o;
Or rrr(o, x, y);
initial
begin
x = 0; y = 0;
#50 x = 0; y = 1;
#50 x = 1; y = 1;
#50 x = 1; y = 1;
end
endmodule;

module NandTestBench();
reg x, y;
wire o;
Nand nnd(o, x, y);
initial
begin
x = 0; y = 0;
#50 x = 0; y = 1;
#50 x = 1; y = 0;
#50 x = 1; y = 1;
end
endmodule

module NorTestBench();
reg x, y;
wire o;

Computer
Organization &
Architecture Lab National University Fall 2026
(EL2012)

of Computer and Emerging
Sciences
Islamabad

Computer Organization & Architecture Lab NUCES, ISLAMABAD Page 5 of 18
Nor nrr(o, x, y);
initial
begin
x = 0; y = 0;
#50 x = 0; y = 1;
#50 x = 1; y = 0;
#50 x = 1; y = 1;
end
endmodule

module XorTestBench();
reg x, y;
wire o;
Xor xrr(o, x, y);
initial
begin
x = 0; y = 0;
#50 x = 0; y = 1;
#50 x = 1; y = 0;
#50 x = 1; y = 1;
end
endmodule

module XnorTestBench();
reg x, y;
wire o;
Xnor xnrr(o, x, y);
initial
begin
x = 0; y = 0;
#50 x = 0; y = 1;
#50 x = 1; y = 0;
#50 x = 1; y = 1;
end

Computer
Organization &
Architecture Lab National University Fall 2026
(EL2012)

of Computer and Emerging
Sciences
Islamabad

Computer Organization & Architecture Lab NUCES, ISLAMABAD Page 6 of 18
endmodule
