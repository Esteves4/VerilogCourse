`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Universidade Federal do Ceará
// Engineer: Lucas Esteves Rocha
// 
// Create Date: 01.08.2018 23:45:48
// Module Name: Multiplexador2x1 / FullAdder
// Project Name: Verilog Course - GateModelling
// Revision 0.01 - File Created
// 
//////////////////////////////////////////////////////////////////////////////////

/*
    Activity 1 - The goal of this activity is to build a multiplexer 2x1 using gate modelling
*/
module Multiplexador2x1(input I0, input I1, input S, output Y);
    not not1(saida_not, S);
    and and1(saida_and1, I0,saida_not);
    
    and and2(saida_and2, I1, S);

    or or1(Y, saida_and1, saida_and2);
endmodule

/*
    Activity 2 - The goal of this activity is to build a Full Adder using gate modelling
*/
module FullAdder(input A,input B,input CIN, output COUT, output S);

        xor xor1(saida_xor1, A, B);
        xor xor2(S, saida_xor1,CIN);
               
        and and1(saida_and1, saida_xor1, CIN);
        and and2(saida_and2, A, B);
    
        or or1(COUT, saida_and1, saida_and2);
        
endmodule

/*
    Activity 3 - The goal of this activity is to build an ALU module using abstraction level DataFlow 
*/

module ALU(input[3:0] A, input[3:0] B, input[1:0] S, output reg[7:0] C);
    localparam add = 2'b00;
    localparam sub = 2'b01;
    localparam mul = 2'b10;
    localparam div = 2'b11;
    
    initial
        assign C = ((S == add)? (A + B) : (S == sub) ? (A - B) : (S == mul) ? (A * B) : (S == div) ? (A / B) : (0));

endmodule
