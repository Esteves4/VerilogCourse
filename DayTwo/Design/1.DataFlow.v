`timescale 1ns / 1ps

//////////////////////////////////////////////////////////////////////////////////
// Company: Universidade Federal do Ceará
// Engineer: Lucas Esteves Rocha
// 
// Create Date: 02.08.2018 22:06:49
// Module Name: FullAdderDF / Multiplexador2x1DF
// Project Name: Verilog Course - DataFlow
// Revision 0.01 - File Created
// 
//////////////////////////////////////////////////////////////////////////////////

/*
    Activity 2 - The goal of this activity is to recreate the Multiplexador2x1 and FullAdder modules
                 using abstraction level DataFlow 
*/
module FullAdderDF(input A,input B,input CIN, output reg COUT, output reg S);
    initial begin    
        assign S = ((A ^ B) ^ CIN);
        assign COUT =  ((A ^ B) & CIN) | (A & B);
    end
endmodule

module Multiplexador2x1DF(input I0, input I1, input S, output reg Y);
    initial 
        assign Y = (I0 & ~S) | (I1 & S);
endmodule
