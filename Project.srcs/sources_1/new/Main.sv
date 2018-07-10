`timescale 1ns / 1ps

module Main(output logic [3:0]an, output logic a,output logic b,output logic c,output logic d,output logic e,output logic f,output logic g,output logic dp, output logic [3:0] keyb_row,
             input logic clk,input logic reset,input logic [3:0] keyb_col, input logic start, output logic [3:0] phases, output logic [3:0] outRandomGeneratorTEST,output logic [3:0] key_valueTEST, output logic output1TEST);
    logic [3:0] outRandomGenerator; //Output of random code 
    logic key_valid; //Given
    logic [3:0] key_value; //Given
    logic result; //Result of the comparator
    logic increment; 
    logic decrement;
    logic [3:0] hexNum;
    logic output1;
    logic reset2;
    logic [3:0] outputKey;
    logic [3:0] in0, in1, in2;
    assign in0 = 4'b0000;
    assign in1 = 4'b0000;
    assign in2 = 4'b0000;
    
    assign increment = key_valid & result;
    assign decrement = key_valid & ~result;
    assign reset2 = increment || decrement || reset;
    
    OnOff state( output1,clk, reset2, start);
    RandomCodeGenerator ran(clk, reset, ~output1, outRandomGenerator);
    keypad4X4 key(clk, keyb_row, keyb_col, key_value, key_valid);
    UserKeyboardMap map(key_value, outputKey);
    Comparator comp(outRandomGenerator, outputKey, start, result);
    
    Increment_Decrement incdec(increment, decrement, reset, clk, hexNum);
    steppermotor_wrapper wrap(clk, outRandomGenerator[3:2], outRandomGenerator[1:0], phases, start);
    SevSeg_4digit seven(clk, in0, in1, in2, hexNum, a, b, c, d, e, f, g, dp, an);
    
    assign outRandomGeneratorTEST = outRandomGenerator;
    assign key_valueTEST = outputKey;
    assign output1TEST = output1;
    
endmodule
