// reset all bits when reset is low but update bytes selectively based on byteena
module top_module (
    input clk,
    input resetn, // active low, so reset when 0
    input [1:0] byteena,
    input [15:0] d,
    output [15:0] q
);
    always @(posedge clk) begin

        if (!resetn) begin
            q<=16'b0;
        end
        else begin 
            if (byteena[1]) begin // upper
                q[15:8] <= d[15:8];
            end
            if (byteena[0]) begin // upper
                q[7:0] <= d[7:0];
            end

        end
    end
endmodule
