`timescale 1ns / 1ps

module RandomTestBench();
 
 // Inputs
 logic clock;
 logic reset;
 logic enable;
 
 // Outputs
 logic [3:0] outRandomGenerator;
 
RandomCodeGenerator dut(clock, reset, enable,  outRandomGenerator);
  
 initial begin
 enable = 1;
  clock = 0;
  reset = 1; #10;
  clock = 1; #10;
  clock = 0; #10;
  reset = 0; #10;
  
  forever
   #5 clock = ~clock;
  end  
endmodule