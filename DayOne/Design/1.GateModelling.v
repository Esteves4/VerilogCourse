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
    Activity 1
*/
module Multiplexador2x1;
    wire I0, I1, S, Y;
    
    not not1(saida_not, S);
    and and1(saida_and1, I0,saida_not);
    
    and and2(saida_and2, I1, S);

    or or1(Y, saida_and1, saida_and2);
endmodule

module FullAdder;
    wire A, B, CIN, COUT, S;
    
    xor xor1(saida_xor1, A, B);
    xor xor2(S, saida_xor1,CIN);
    
    and and1(saida_and1, saida_xor1, CIN);
    and and2(saida_and2, A, B);

    or or1(COUT, saida_and1, saida_and2);
endmodule
