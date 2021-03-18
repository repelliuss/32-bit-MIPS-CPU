module memory (/*AUTOARG*/
   // Outputs
   read_data,
   // Inputs
   write_data, adress, mem_write, mem_read, clk
   ) ;
	//parameter mem_length = 2 ** 18; //this was taking too long so I stopped it. not recommended 256KB Memory
	//parameter mem_length = 2 ** 14; //took about 2 min and 22 seconds to synthesize 16KB Memory
   parameter mem_length = 2 ** 10; //1 KB memory
   input [31:0] write_data;
	input [17:0] adress; //256KB memory suitable
   input        mem_write, mem_read;
   input        clk;
   output reg [31:0] read_data;

   reg [7:0]    memory_data[mem_length - 1 : 0];

	//this is need to be posedge. this is about clock cycle delay.
	//initally read data will consist of XXXXXX. So when mem_read
	//signal came read_data will still be XXXXX if this would be negedge
	//At the end of cycle for lw for example XXXXX would be written to
	// register. So we need posedge here to get read_data at negedge
	// if mem_read is positive
   always @ (posedge clk) begin
      if (mem_read == 1'b1) begin
         read_data[7:0] <= memory_data[adress + 3];
         read_data[15:8] <= memory_data[adress + 2];
         read_data[23:16] <= memory_data[adress + 1];
         read_data[31:24] <= memory_data[adress];
      end
   end

   always @ (negedge clk) begin
      if (mem_write == 1'b1) begin
         memory_data[adress] <= write_data[31:24];
         memory_data[adress + 1] <= write_data[23:16];
         memory_data[adress + 2] <= write_data[15:8];
         memory_data[adress + 3] <= write_data[7:0];
      end
   end

endmodule // memory
