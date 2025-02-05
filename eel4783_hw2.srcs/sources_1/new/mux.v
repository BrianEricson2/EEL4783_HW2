`timescale 1ns / 1ps

primitive mux(Y,S,I1,I2);
    output Y;
    input S,I1,I2;
    
    table
        0 ? 0   :0;
        0 ? 1   :1;
        1 0 ?   :0;
        1 1 ?   :1;
    endtable
endprimitive