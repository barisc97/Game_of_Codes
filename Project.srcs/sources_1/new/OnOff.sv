`timescale 1ns / 1ps

module OnOff( output logic output1, input logic clk, input logic reset, input logic signal);
        always_ff @(posedge clk)
        begin
        if (reset) 
            output1 <= 0;
        
        else if ( signal == 0 && output1 == 0)
        begin 
            output1 <= 0;
        end
        else if ( signal == 0 && output1 == 1)
        begin 
            output1 <= 1;
        end
        else if ( signal == 1 && output1 == 0)       
        begin 
            output1 <= 1;
        end
        else if ( signal == 1 && output1 == 1)
        begin
            output1 <= 1;
        end
        end
endmodule
