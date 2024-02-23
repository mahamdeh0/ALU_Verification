// Code your design here
module ALU(clk,reset,A,B,Op,R);

  input              reset,clk;
  input       [3:0]  A,B;
  input       [1:0]  Op;
  output reg  [7:0]  R;

  always@(posedge clk)
    begin

      if(reset)
        R = 8'b00000000;
      else begin
        case(Op)

          0: R = A + B;
          1: R = A - B;
          2: R = A * B;
          3: R = A / B;

        endcase

      end

    end

endmodule