`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Universidade Federal do Ceará
// Engineer: Lucas Esteves Rocha
// 
// Create Date: 02.08.2018 21:49:43
// Module Name: MultiplexadorTest
// Project Name: Verilog Course - Testbenches
// Revision 0.01 - File Created
// 
//////////////////////////////////////////////////////////////////////////////////


/*
    Activity 1.2 - The goal of this activity is to test the Multiplexador2x1 module created in the previous activity
*/
module MultiplexadorTest;
    reg I0, I1, S;
    wire Y;
    
    Multiplexador2x1 mux(I0,I1,S,Y);
    
     initial begin
       I0 = 0;
       I1 = 0;
       S = 0;
         
       #20;
       
       I0 = 0;
       I1 = 0;
       S = 1;
       
       #20;
       
       I0 = 0;
       I1 = 1;
       S = 0;
       
       #20;
       
       I0 = 0;
       I1 = 1;
       S = 1;
       
       #20;
       
       I0 = 1;
       I1 = 0;
       S = 0;
       
       #20;
       
       I0 = 1;
       I1 = 0;
       S = 1;
       
       #20;
       
       I0 = 1;
       I1 = 1;
       S = 0;
       
       #20;
       
       I0 = 1;
       I1 = 1;
       S = 1;
       
       #20;
       
       end
endmodule
