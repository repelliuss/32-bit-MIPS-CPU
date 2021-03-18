module comparator_controller (/*AUTOARG*/
   // Outputs
   out,
   // Inputs
   lt, eq, gt
   ) ;
   input lt, eq, gt;
   output [1:0] out;

   xor x1(out[1], lt, gt);
   xor x2(out[0], eq, gt);

endmodule // comparator_controller
