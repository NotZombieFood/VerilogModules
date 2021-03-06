module counter(input clock, input rst, input en_count, output reg [3:0] count);
always @(posedge clock) begin
    if (en_count)
        count <= count + 1;
    else if (rst)
        count <= 0;
end
endmodule