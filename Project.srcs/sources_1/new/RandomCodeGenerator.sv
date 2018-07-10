    `timescale 1ns / 1ps
    
    module RandomCodeGenerator(input logic clk, reset, enable, output logic [3:0] outRandomGenerator);
        logic [15:0] random; 
        always_ff @(posedge clk)
        begin
            if(reset)
            begin
                random <= 16'b1011000101011101;
            end
            else if (enable)
            begin
                //random[0]  <= (random[15] ^ random[14]) ^ random[12] ^ random[3];
                random[0]  <= (random[15] ^ random[13]) ^ random[12] ^ random[10] + 1;
                random[1]  <= random[0];
                random[2]  <= random[1];
                random[3]  <= random[2];
                random[4]  <= random[3];
                random[5]  <= random[4];
                random[6]  <= random[5];
                random[7]  <= random[6];
                random[8]  <= random[7];
                random[9]  <= random[8];
                random[10] <= random[9];
                random[11] <= random[10];
                random[12] <= random[11];
                random[13] <= random[12];
                random[14] <= random[13];
                random[15] <= random[14];
            end
        end
        assign outRandomGenerator = random[9:6];
    endmodule 