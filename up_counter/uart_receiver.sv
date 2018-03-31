module uart_receiver (
  input  logic clk,
  input  logic i_reset,
  input  logic i_rx,
  output logic [0:7] o_data,
  output logic o_ready_to_read,
  output logic [0:7] o_debug
);

typedef enum {IDLE, START_BIT, DATA_BITS, STOP_BIT} RxState;
parameter FULL_BIT          = 21812;
parameter HALF_BIT          = 10906;

// Registering inputs
logic r_reset;         // register data input
logic r_rx;            // register received bits

// True registers
logic [0:7]  r_current_data;
logic [0:15] r_current_cycle_count;
RxState      r_current_state;
logic [0:3]  r_current_bit;

// Wires
logic [0:7]  w_next_data;
logic [0:15] w_next_cycle_count;
RxState      w_next_state;
logic [0:3]  w_next_bit;

always_comb
begin
  o_ready_to_read = 0;
  o_data = 0;
  o_debug = 0;

  // reset logic
  if (r_reset == 1'b1) begin
    w_next_data        = 0;
    w_next_cycle_count = 0;
    w_next_state       = IDLE;
    w_next_bit         = 0;
  end
  else begin
    w_next_data        = r_current_data;
    w_next_cycle_count = r_current_cycle_count;
    w_next_state       = r_current_state;
    w_next_bit         = r_current_bit;
  end

  o_debug = {r_rx, r_rx, r_rx, r_rx, r_rx, r_rx, r_rx, r_rx};
  if (r_current_state == IDLE) begin
    // Look for a low bit
    w_next_state       = (r_rx == 1'b0) ? START_BIT : w_next_state;
    w_next_cycle_count = (r_rx == 1'b0) ? 1 : w_next_cycle_count; // Already saw one low sample.
  end else if (r_current_state == START_BIT) begin
    if (r_rx == 1'b0) begin
      w_next_state       = (r_current_cycle_count == HALF_BIT) ? DATA_BITS : START_BIT;
      w_next_cycle_count = (r_current_cycle_count == HALF_BIT) ? 1         : r_current_cycle_count + 1;
      o_debug = 8'b10101010;
    end else begin
      w_next_state       = IDLE;
      w_next_cycle_count = 0;
    end
  end else if (r_current_state == DATA_BITS) begin
    if (r_current_cycle_count == FULL_BIT) begin
      w_next_data[r_current_bit] = r_rx; // Sample middle bit
      w_next_bit   = (r_current_bit == 7) ? 0        : r_current_bit + 1;
      w_next_state = (r_current_bit == 7) ? STOP_BIT : w_next_state; 
      w_next_cycle_count = 0;
    end else begin
      w_next_cycle_count = r_current_cycle_count + 1;
    end
  end else begin // STOP bit
    if (r_current_cycle_count < FULL_BIT) begin
      w_next_cycle_count = r_current_cycle_count + 1;
    end else begin
      w_next_cycle_count = 0;
      w_next_state = IDLE;
      o_ready_to_read = 1;
      o_data = r_current_data;
    end 
  end
end

always_ff @(posedge clk)
begin
  r_reset                    <= i_reset;
  r_rx                       <= i_rx;
  r_current_data             <= w_next_data;
  r_current_cycle_count      <= w_next_cycle_count;
  r_current_state            <= w_next_state;
  r_current_bit              <= w_next_bit;
end

endmodule
