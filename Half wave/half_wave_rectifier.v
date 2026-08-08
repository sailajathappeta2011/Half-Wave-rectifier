// Half Wave Rectifier using Verilog

module half_wave_rectifier (
    input  signed [7:0] ac_input,
    output reg signed [7:0] dc_output
);

always @(*) begin
    if (ac_input > 0)
        dc_output = ac_input;   // Positive half-cycle
    else
        dc_output = 0;          // Negative half-cycle blocked
end

endmodule
