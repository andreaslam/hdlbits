module top_module (
    input clk,
    input in, 
    output out);

reg rst;
assign d = out ^ in;

always @(posedge clk) begin
    if (d) begin 
        out <= d;
    end else begin
        out <= 0;
    end
end

endmodule
