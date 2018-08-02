`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Universidade Federal do Ceará
// Engineer: Lucas Esteves Rocha
// 
// Create Date: 01.08.2018 22:09:18
// Module Name: HelloWorld
// Project Name: Verilog Course
// Revision 0.01 - File Created
// 
//////////////////////////////////////////////////////////////////////////////////

module WorkingWithNumbers;
    //Variables created for activity 2
    integer V1 = 5;
    reg[4:0] V2 = 5;
    
    integer V3 = -5;
    reg[4:0] V4 = -5;
    reg signed[4:0] V5 = -5;
    
    reg[4:0] V6 = 3;
    reg[4:0] V7 = 3;
    
    integer V8 = 3;
    real V9 = 3.1;   
    
    initial begin
        /*
        The goal of this activity is to represent numbers of diferent ways
        */
        $display("--- Activity 1 ---");
            $display("A) %d", 8'd123);
            $display("B) %h", 16'hx);
            $display("C) %d , %d ", -4'd2, 4'b1110 );
            $display("D) %h", 'h1234);
            
         /*
         The goal of this activity is to create variables, assign them values and display it in diferent forms
         */
         $display("--- Activity 2 ---");
             $display("A) (%d, %b), (%d, %b),", V1, V1, V2, V2);
             $display("B) (%d, %b), (%d, %b), (%d, %b), ", V3, V3, V4, V4, V5, V5);
             $display("C) (%b, %b), [4]: (%b, %b)", V6, V7, V6[4], V7[4] );
             $display("D) (%d, %b), (%d, %b) ", V8, V8, V9,  V9);
             
    
    end
endmodule
