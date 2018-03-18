module uart_transmitter (
  input  logic clk,                      // system clock
  input  logic i_reset,                  // reset input
  input  logic [0:7] i_data,             // 8-bit data input
  input  logic i_start_transmission,     // This is a pulse. It remains active for one clock cycle.
  output logic o_tx                      // Bit being transmitted including start, data, and stop bits.
);

typedef enum {IDLE, TRANSMIT} TxState;
parameter CYCLES_PER_SAMPLE = 10416; // TODO: Fix this.

// Registering inputs
logic [0:7]  r_data;                     // register data input
logic        r_reset;                    // register reset input
logic        r_start_transmission;       // register start transmission input

// True registers
logic [0:9]  r_current_data;             // Persistent storage for data that persists even if data input changes
logic [0:15] r_current_cycle_count;      // Cycle count for current sample; goes from 0 to CYCLES_PER_SAMPLE - 1
TxState      r_current_state;            // Current state of transmission
logic [0:3]  r_current_bit;              // Current data bit to be transmitted

// Wires
logic [0:9]  w_next_data;                // Next piece of data
logic [0:15] w_next_cycle_count;         // Goes from 0 to CYCLES_PER_SAMPLE - 1
TxState      w_next_state;               // Next state of transmission
logic [0:3]  w_next_bit;                 // Next data bit to be transmitted;
                                         // this is a number between 0 and 10, hence 4 bits

always_comb
begin
  // Default is to transmit a 1 to show that the wire is alive
  o_tx = 1;

  // logic for maintaining baud rate
  if (r_reset == 1'b1) begin
    w_next_cycle_count = 0;
    w_next_state = IDLE;
    w_next_bit   = 0;
    w_next_data  = 0;
  end
  else begin
    w_next_cycle_count = r_current_cycle_count;
    w_next_state       = r_current_state;
    w_next_bit         = r_current_bit;
    w_next_data        = r_current_data;
  end

  // There has been a request to start transmission.
  if (r_current_state == IDLE) begin
    w_next_state = (r_start_transmission == 1) ? TRANSMIT : r_current_state;
    w_next_data  = {1'b0, r_data[7], r_data[6], r_data[5], r_data[4], r_data[3], r_data[2], r_data[1], r_data[0], 1'b1};
    // Need this strange construct above to fix endianness.
  end else begin
    $display("Within TRANSMIT, current cycle count is %d, current bit %d, current data is %d\n", r_current_cycle_count, r_current_bit, r_data[r_current_bit]);
    w_next_cycle_count = r_current_cycle_count + 1;
    o_tx               = r_current_data[r_current_bit];
    w_next_cycle_count = (w_next_cycle_count == CYCLES_PER_SAMPLE) ? 0 : w_next_cycle_count;
    if (w_next_cycle_count == 0) begin
      w_next_bit = w_next_bit + 1;
    end
    w_next_state       = (w_next_bit == 10) ? IDLE : TRANSMIT;
    w_next_bit         = (w_next_bit == 10) ? 0 : w_next_bit;
  end
end

always_ff @(posedge clk)
begin
  r_start_transmission       <= i_start_transmission;
  r_data                     <= i_data;
  r_reset                    <= i_reset;
  r_current_data             <= w_next_data;
  r_current_cycle_count      <= w_next_cycle_count;
  r_current_state            <= w_next_state;
  r_current_bit              <= w_next_bit;
end

endmodule
