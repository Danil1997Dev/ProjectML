`timescale 1ns/1ps

module layer_tb
  
  #(parameter
  LENGHT_I = 2,//32
  LENGHT_O = 1,//8
  WIDTH_W = 9,//9
  WIDTH_S = 10,//10
  WIDTH_O = 10, //7
  WIDTH_SM =8,//8
  WIDTH_I = 1,//1
  RANGE_SIGM = 1000,
  ZERO_NUM = $clog2(RANGE_SIGM)-WIDTH_SM 
)
  (
  
  );
  
  
   logic clk;
  	logic [0:LENGHT_I*LENGHT_O-1] [WIDTH_W-1:0]  w_i;
	logic [LENGHT_I-1:0] [WIDTH_I-1:0] in;
	
	
	logic [LENGHT_O-1:0] [WIDTH_O-1:0] out ;
	
  layer #(.LENGHT_I(LENGHT_I),
          .LENGHT_O(LENGHT_O),
			 .WIDTH_W(WIDTH_W),
			 .WIDTH_S(WIDTH_S),
			 .WIDTH_O(WIDTH_O),
			 .WIDTH_SM(WIDTH_SM),
			 .WIDTH_I(WIDTH_I)
			 
			 
			 
  ) dut ( .*);
				  
  always #10 clk = ~clk; 
  
  initial
    begin
	  
		clk = 1'b0;
		w_i[0]= 0;
		w_i[1]= 0;
		in[0] = 0;
		in[1] = 0;
		
		
		# 50;
///////////////////// ///////////////////////////////		
		w_i[0]= 5;
		w_i[1]= -3;
		in[0] = 1;
		in[1] = 0;
		
		 
		#20;
		w_i[0]= 0;
		w_i[1]= 0;
		in[0] = 0;
		in[1] = 0;
		
		#50;
		w_i[0]= -2;
		w_i[1]= 4;
		in[0] = 1;
		in[1] = 1;
                #35;
		
		          
//////////////////////////////////////////////////////
		#50;
		
		
		 
		#20;
		
		w_i[0]= -2;
		w_i[1]= -4;
		in[0] = 1;
		in[1] = 1;
		
		
		#50;
		
                #35;
		
//////////////////////////////////////////////////////
               
                #50;
		  $stop;
		  
	 end 
	 
endmodule