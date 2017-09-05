module registerFile
  (input clk,
   input write,
   input [3:0] wrAddr,
   input [31:0] wrData,
   input [3:0] rdAddrA,
   output [31:0] rdDataA);

   reg [31:0] 	 reg0, reg1, reg2, reg3, reg4, reg5, reg6, reg7, reg8, reg9, reg10, reg11, reg12, reg13, reg14, reg15;

   assign rdDataA = rdAddrA == 0 ? reg0 :
		    rdAddrA == 1 ? reg1 :
		    rdAddrA == 2 ? reg2 :
		    rdAddrA == 3 ? reg3 :
		    rdAddrA == 4 ? reg4 :
		    rdAddrA == 5 ? reg5 :
		    rdAddrA == 6 ? reg6 :
		    rdAddrA == 7 ? reg7 :
		    rdAddrA == 8 ? reg8 :
		    rdAddrA == 9 ? reg9 :
		    rdAddrA == 10 ? reg10 :
		    rdAddrA == 11 ? reg11 :
		    rdAddrA == 12 ? reg12 :
		    rdAddrA == 13 ? reg13 :
		    rdAddrA == 14 ? reg14 :
		    rdAddrA == 15 ? reg15 : 0;

   always @(posedge clk) begin
    if (write) 
	case (wrAddr) 
	  0: begin
	     reg0 <= wrData;
	  end
	  1: begin
	     reg1 <= wrData;
	  end
	  2: begin
	     reg2 <= wrData;
	  end
	  3: begin
	     reg3 <= wrData;
	  end
	  4: begin
	     reg4 <= wrData;
	  end
	  5: begin
	     reg5 <= wrData;
	  end
	  6: begin
	     reg6 <= wrData;
	  end
	  7: begin
	     reg7 <= wrData;
	  end
	  8: begin
	     reg8 <= wrData;
	  end
	  9: begin
	     reg9 <= wrData;
	  end
	  10: begin
	     reg10 <= wrData;
	  end
	  11: begin
	     reg11 <= wrData;
	  end
	  12: begin
	     reg12 <= wrData;
	  end
	  13: begin
	     reg13 <= wrData;
	  end
	  14: begin
	     reg14 <= wrData;
	  end
	  15: begin
	     reg15 <= wrData;
	  end
	endcase
   end 
endmodule