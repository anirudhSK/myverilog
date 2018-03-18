module uart_transmitter (
  input  logic clk,
  input  logic i_reset,
  input  logic [7:0] i_data,
  input  logic i_start_transmission,
  output logic o_data,
  output logic o_finished_transmission,
);

parameter BAUD_RATE         = 10000;
parameter CLOCK_FREQUENCY   = 250000000;
parameter CYCLES_PER_SAMPLE = CLOCK_FREQUENCY / BAUD_RATE;

// Registers
logic [15:0] r_intra_sample_cycle_count; // Goes from 0 to 10000
logic [2:0]  r_current_state;            // idle or transmitting
logic        r_reset;                    // register reset input
logic        r_data;                     // register data input

always_comb
begin
  // reset logic
  if (r_reset == 1'b1) begin
    w_intra_sample_cycle_count = 0;
    w_current_state = 0;
  end
  else begin
    w_intra_sample_cycle_count = r_intra_sample_cycle_count;
    w_current_state = r_current_state;
  end

  // transmission logic
end

always_ff @(posedge clk)
begin
  r_reset                    <= i_reset;
  r_data                     <= i_data;
  r_intra_sample_cycle_count <= w_intra_sample_cycle_count;
  r_current_state            <= w_current_state;
end

endmodule
