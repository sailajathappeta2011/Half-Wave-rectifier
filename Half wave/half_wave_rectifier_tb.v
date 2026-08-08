`timescale 1ns/1ps

module half_wave_rectifier_tb;

reg signed [7:0] ac_input;
wire signed [7:0] dc_output;

half_wave_rectifier uut (
    .ac_input(ac_input),
    .dc_output(dc_output)
);

initial begin

    $monitor("Time=%0t | AC Input=%d | Rectified Output=%d",
             $time, ac_input, dc_output);

    // Positive half-cycle
    ac_input = 8'sd0;
    #10;

    ac_input = 8'sd25;
    #10;

    ac_input = 8'sd50;
    #10;

    ac_input = 8'sd75;
    #10;

    ac_input = 8'sd100;
    #10;

    // Negative half-cycle
    ac_input = 8'sd75;
    #10;

    ac_input = 8'sd50;
    #10;

    ac_input = 8'sd25;
    #10;

    ac_input = 8'sd0;
    #10;

    ac_input = -8'sd25;
    #10;

    ac_input = -8'sd50;
    #10;

    ac_input = -8'sd75;
    #10;

    ac_input = -8'sd100;
    #10;

    $finish;
end

endmodule
