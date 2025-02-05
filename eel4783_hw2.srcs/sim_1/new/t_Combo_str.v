`timescale 1ns / 1ps

module t_Combo_str();
    reg [3:0] T_I;
    wire T_Y,T_A,T_B,T_C,T_D;
    reg [3:0] err_cnt;
    Combo_str DUT(T_Y,T_A,T_B,T_C,T_D);
    
    assign T_A=T_I[3];
    assign T_B=T_I[2];
    assign T_C=T_I[1];
    assign T_D=T_I[0];
        
    initial begin
        T_I=4'b0000;
    end
    
    always
    begin
        for(T_I=4'b0000;T_I<=4'b1111;T_I=T_I+1)
        begin
            #10;
            if(T_I == 4'b0110 & T_Y == 0) err_cnt = err_cnt+1;
            else if(T_I != 4'b0110 & T_Y == 1) err_cnt = err_cnt + 1;
        end
    end
endmodule
