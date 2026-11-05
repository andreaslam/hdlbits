module top_module (
    input clk,
    input j,
    input k,
    output Q); 

initial begin
    register Q_old;
    assign Q_old = Q;
end

always @(posedge clk) begin
    if (j && k) begin
        Q <= Q_old;
    end 
end

endmodule
