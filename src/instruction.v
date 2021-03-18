module instruction (/*AUTOARG*/
   // Outputs
   instruction,
   // Inputs
   pc, clk
   ) ;
	//parameter instruction_length = 2 ** 14; // for 16 KB Instruction
   parameter instruction_length = 2 ** 10; // for 1 KB Instruction
   input [31:0] pc;
   input       clk;
   output reg [31:0] instruction;

   reg [31:0] instruction_data[instruction_length - 1 : 0] ;

   always @ (negedge clk) begin
      instruction <= instruction_data[pc[31:2]];
   end

endmodule // instruction