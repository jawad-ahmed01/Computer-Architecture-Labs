module OnesComplementGate(o3, o2, o1, o0, x3, x2, x1, x0);
    input x3; input x2; input x1; input x0;
    output o3; output o2; output o1; output o0;
    not u3(o3, x3);
    not u2(o2, x2);
    not u1(o1, x1);
    not u0(o0, x0);
endmodule

module OnesComplementDataflow(o3, o2, o1, o0, x3, x2, x1, x0);
    input x3; input x2; input x1; input x0;
    output o3; output o2; output o1; output o0;
    assign o3 = ~x3;
    assign o2 = ~x2;
    assign o1 = ~x1;
    assign o0 = ~x0;
endmodule

module OnesComplementGateTB();
    reg x3; reg x2; reg x1; reg x0;
    wire o3; wire o2; wire o1; wire o0;
    OnesComplementGate uut(o3, o2, o1, o0, x3, x2, x1, x0);
    initial begin
        x3 = 0; x2 = 0; x1 = 0; x0 = 0;
        #50 x3 = 1; x2 = 0; x1 = 1; x0 = 0;
        #50 x3 = 0; x2 = 1; x1 = 1; x0 = 1;
        #50 x3 = 1; x2 = 1; x1 = 1; x0 = 1;
    end
endmodule

module OnesComplementDataflowTB();
    reg x3; reg x2; reg x1; reg x0;
    wire o3; wire o2; wire o1; wire o0;
    OnesComplementDataflow uut(o3, o2, o1, o0, x3, x2, x1, x0);
    initial begin
        x3 = 0; x2 = 0; x1 = 0; x0 = 0;
        #50 x3 = 1; x2 = 0; x1 = 1; x0 = 0;
        #50 x3 = 0; x2 = 1; x1 = 1; x0 = 1;
        #50 x3 = 1; x2 = 1; x1 = 1; x0 = 1;
    end
endmodule

