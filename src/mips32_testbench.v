module mips32_testbench ();
   
   reg clk = 1'b0;
   wire [31:0] pc;

   initial begin	 
      $readmemb("registers.mem", cpu.register_block.registers);
      $readmemb("instruction.mem", cpu.instruction_block.instruction_data);
      $readmemb("data.mem", cpu.memory_block.memory_data);
      
      //repeat by instruction count
      repeat (30) begin
         @ (negedge clk);
      end

      $writememb("registers_out.mem", cpu.register_block.registers);
      $writememb("instruction_out.mem", cpu.instruction_block.instruction_data);
      $writememb("data_out.mem", cpu.memory_block.memory_data);
      
      // finishing simulation to not work infinitely
      $finish;
   end
   
   
   mips32 cpu(pc, clk);
   
   // delay is half cycle length
   always #20 clk = ~clk;

endmodule
