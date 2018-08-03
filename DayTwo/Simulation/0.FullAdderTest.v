`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Universidade Federal do Ceará
// Engineer: Lucas Esteves Rocha
// 
// Create Date: 02.08.2018 21:23:55
// Module Name: FullAdderTest
// Project Name: Verilog Course - Testbenches
// Revision 0.01 - File Created
// 
//////////////////////////////////////////////////////////////////////////////////

/*
    Activity 1.1 - The goal of this activity is to test the FullAdder module created in the previous activity
*/
module FullAdderTest;
    reg A, B, CIN;
    wire COUT, S;
    
    FullAdder sum(A,B,CIN,COUT,S);
    
    initial begin
    A = 0;
    B = 0;
    CIN = 0;
      
    #20;
    
    A = 0;
    B = 0;
    CIN = 1;
    
    #20;
    
    A = 0;
    B = 1;
    CIN = 0;
    
    #20;
    
    A = 0;
    B = 1;
    CIN = 1;
    
    #20;
    
    A = 1;
    B = 0;
    CIN = 0;
    
    #20;
    
    A = 1;
    B = 0;
    CIN = 1;
    
    #20;
    
    A = 1;
    B = 1;
    CIN = 0;
    
    #20;
    
    A = 1;
    B = 1;
    CIN = 1;
    
    #20;
    
    end
    

endmodule
