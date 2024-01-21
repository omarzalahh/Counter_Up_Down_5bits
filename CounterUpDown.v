/*
Module counter 
--------------------
Name:Counter up down
date :3/8/2022
Description:Counter that counts down and up of 5 bits
*/
module CounterUpDown(
  input    wire  [4:0]     IN,
  input    wire            load,
  input    wire            UP,
  input    wire            Down,
  input 	  wire  	         CLK,
  output  	wire            High,
  output   wire            Low,
  reg            [4:0]     counter
  );
always@(posedge CLK)
begin
  if(load)
    begin
    counter<=IN;
  end
  else if((counter>5'b00000)&&(Down==1'b1))
    begin
    counter<=counter-1'b1;
  end
  else if((counter<5'b11111)&&(UP==1'b1))
    begin
  counter<=counter+1'b1;
end
  end 
  
  assign High=(counter==5'b11111);
  assign Low=(counter==5'b00000);
    
 endmodule
 