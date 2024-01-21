/*Description
--------------
The target of this assignment is to modify in your assignment 1 code
based on blocking and Non-blocking concept we are discussed in session
2 to describe all the flops using only 1 always block and capture every
combinational cloud drive a flop with only 1 always block. So finally, your
code has to optimized to contain only 4 always blocks.
Block(Module) Name: DigCt
Inputs: IN1, IN2, IN3, IN4, CLK (all inputs of 1-bit width)
Outputs: OUT1, OUT2, OUT3 (output of 1-bit width)
Date:3/8/2022
*/
module DigCt(
  input wire IN1,
  input wire IN2,
  input wire IN3,
  input wire IN4,
  input wire IN5,
  input wire CLK,
  
  output reg OUT1,
  output reg OUT2,
  output reg OUT3,
  
  reg D1,
  reg D2,
  reg D3,
  reg D4,
  reg D5,
  reg D6
 );

  /*Four always block 
  1-First level first always block for IN4 to get IN4'
  2-Second level for nor and or gates
  3-for Nand,Nand and or 
  4-for flipflops
  */
  always@(*)
  begin
    D6=~IN4;
  end
  always@(*)
  begin
    D4=~(IN2|IN1);
    D5=(IN3|D6);
  end
  always@(*)
  begin
    D1=~(D4&IN3);
    D2=~(IN2&IN3);
    D3=(D5|IN5);
  end
  always@(posedge CLK)
  begin
    OUT1<=D1;
    OUT2<=D2;
    OUT3<=D3;
  end
    /*we can make 4 always block 1 for all flip flops and 3 for the 3 clouds like
    always@(*)
  begin
    D1=~(~(IN1|IN2)&IN3);
  end
  always@(*)
  begin
    D2=~(IN2&IN3);
  end
  always@(*)
  begin
    D3=(~(IN4)|IN3)|IN5;
  end
  always@(posedge CLK)
  begin
    OUT1<=D1;
    OUT2<=D2;
    OUT3<=D3;
  end
endmodule*/
    
endmodule
    