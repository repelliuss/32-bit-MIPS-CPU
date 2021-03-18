module registers (/*AUTOARG*/
   // Outputs
   read_data1, read_data2,
   // Inputs
   write_data, write_data2, read_reg1, read_reg2, write_reg, write_reg2,
   sig_reg_write, sig_reg_write2, clk
   ) ;

   output [31:0] read_data1, read_data2;
   input [31:0]  write_data;
   input [31:0]  write_data2;
   input [4:0]   read_reg1, read_reg2, write_reg, write_reg2;
   input         sig_reg_write, sig_reg_write2, clk;

   reg [31:0]    registers[31:0];

   assign read_data1=registers[read_reg1]; //rs
   assign read_data2=registers[read_reg2]; //rt-rd

   always @(negedge clk) begin
      if (sig_reg_write == 1'b1) begin
         registers[write_reg] = write_data;
      end

      if (sig_reg_write2 == 1'b1) begin
         registers[write_reg2] = write_data2;
      end
   end

endmodule // registers
