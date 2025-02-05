`timescale 1ns / 1ps

module Combo_str(
    output Y,
    input A, B, C, D
    );
    wire X1,X2,X3,X4;
    
    or U0(X1,A,D);
    not U1(X2,X1);
    not U2(X3,D);
    and U3(X4,B,C,X3);
    and U4(Y,X2,X4);
endmodule
