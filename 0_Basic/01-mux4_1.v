`timescale 1ns/1ns

/* 
    VL1 四选一多路器
*/

module mux4_1(
input [1:0]d1,d2,d3,d0,
input [1:0]sel,
output[1:0]mux_out
);
//*************code***********//
wire [1:0] d1, d2, d3, d0;
wire [1:0] sel;
wire [1:0] mux_out;
reg  [1:0] mux_out_reg;

always @(*)
begin
    case (sel)
        2'b00: mux_out_reg = d3;
        2'b01: mux_out_reg = d2;
        2'b10: mux_out_reg = d1;
        2'b11: mux_out_reg = d0;
        default: mux_out_reg = d3;
    endcase
end

assign mux_out = mux_out_reg;
//*************code***********//
endmodule