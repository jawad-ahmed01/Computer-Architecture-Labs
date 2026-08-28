module mux_dataflow(
    OUTPUT,
    S0, S1, S2,
    z0, z1, z2, z3, z4, z5, z6, z7
);

input S0, S1, S2;
input z0, z1, z2, z3, z4, z5, z6, z7;
output OUTPUT;

assign OUTPUT =
       (~S2 & ~S1 & ~S0 & z0) |
       (~S2 & ~S1 &  S0 & z1) |
       (~S2 &  S1 & ~S0 & z2) |
       (~S2 &  S1 &  S0 & z3) |
       ( S2 & ~S1 & ~S0 & z4) |
       ( S2 & ~S1 &  S0 & z5) |
       ( S2 &  S1 & ~S0 & z6) |
       ( S2 &  S1 &  S0 & z7);

endmodule


module MUX_Dataflow_TestBench();

reg S0, S1, S2;
reg z0, z1, z2, z3, z4, z5, z6, z7;
wire OUTPUT;

mux_dataflow uut(
    OUTPUT,
    S0, S1, S2,
    z0, z1, z2, z3, z4, z5, z6, z7
);

initial
begin
    z0 = 0;
    z1 = 1;
    z2 = 0;
    z3 = 1;
    z4 = 1;
    z5 = 0;
    z6 = 1;
    z7 = 0;

         S0 = 0; S1 = 0; S2 = 0; 
    #50  S0 = 1; S1 = 0; S2 = 0; 
    #50  S0 = 0; S1 = 1; S2 = 0; 
    #50  S0 = 1; S1 = 1; S2 = 0; 
    #50  S0 = 0; S1 = 0; S2 = 1; 
    #50  S0 = 1; S1 = 0; S2 = 1; 
    #50  S0 = 0; S1 = 1; S2 = 1;
    #50  S0 = 1; S1 = 1; S2 = 1; 
end

endmodule
