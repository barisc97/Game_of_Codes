`timescale 1ns / 1ps

module Comparator(input logic [3:0] outRandomGenerator, input logic [3:0]outputKey, start,
                  output logic result);
    always_comb              
    if ( (outRandomGenerator[0] ~^ outputKey[0]) & (outRandomGenerator[1] ~^ outputKey[1]) & (outRandomGenerator[2] ~^ outputKey[2])
        & (outRandomGenerator[3] ~^ outputKey[3]))
        result = 1;
    else
        result = 0;
endmodule
