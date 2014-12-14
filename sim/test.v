
`timescale 1ns/1ns
`default_nettype none
module test;

    localparam WIDTH = 4;

    reg [WIDTH-1:0] in0, in1;
    wire [WIDTH-1:0] out;

    integer i, j;

    initial begin
        for (i = 0; i < 2 ** WIDTH; i = i + 1) begin
            for (j = 0; j < 2 ** WIDTH; j = j + 1) begin
                in0 <= i;
                in1 <= j;
                #10;
            end
        end
    end

    initial $monitor("in0= %d, in1=%d, out=%d", in0, in1, out);


    adder #(
        .WIDTH(WIDTH)
    ) adder_i (
        .in0(in0),
        .in1(in1),
        .out(out),
        .carry()
    ); 

endmodule 
`default_nettype wire
