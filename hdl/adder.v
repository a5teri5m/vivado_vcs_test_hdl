
`default_nettype none
module adder #(
    parameter WIDTH = 4
) (
    input wire [WIDTH-1:0] in0,
    input wire [WIDTH-1:0] in1,
    output wire [WIDTH-1:0] out,
    output wire carry
);

    assign {carry, out} = in0 + in1;

endmodule
`default_nettype wire

