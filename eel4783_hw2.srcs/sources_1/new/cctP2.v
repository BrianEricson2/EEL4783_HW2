`timescale 1ns / 1ps

primitive mux(Y,S,I1,I2);
    output Y;
    input S,I1,I2;
    
    table
        0 0 ?   :0;
        0 1 ?   :1;
        1 ? 0   :0;
        1 ? 1   :1;
    endtable
endprimitive

module cctP2(
    output Y,
    input Sel,A,B,C,D
    );
    wire X1,X2;
    nand #(3) g1(X1,A,B);
    nand #(4) g2(X2,C,D);
    mux(Y,Sel,X1,X2);
endmodule
