`timescale 1ns/1ns

/* 
    VL2 异步复位的串联 T 触发器
*/

module Tff_2 (
input wire data, clk, rst,
output reg q  
);
//*************code***********//
reg q1;

always @(posedge clk or negedge rst) begin
    if (rst == 1'b0) begin
        q1 <= 1'b0;
    end else begin
        if (data) begin
            q1 <= ~q1;
        end else begin
            q1 <= q1;
        end
    end
end

always @(posedge clk or negedge rst) begin
    if (rst == 1'b0) begin
        q <= 1'b0;
    end else begin
        if (q1) begin
            q <= ~q;
        end else begin
            q <= q;
        end
    end
end

//*************code***********//
endmodule