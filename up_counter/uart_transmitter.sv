module uart_transmitter (
  input  logic clk,                      // system clock
  input  logic i_reset,                  // This is a pulse. It remains active for one clock cycle.
  input  logic [0:7] i_data,             // 8-bit data input
  input  logic i_start_transmission,     // This is a pulse. It remains active for one clock cycle.
  output logic o_tx                      // Bit being transmitted including start, data, and stop bits.
);

typedef enum {IDLE, TRANSMIT_START_BIT, TRANSMIT_DATA_BITS, TRANSMIT_STOP_BIT} TxState;
parameter BAUD_RATE         = 10000;
parameter CLOCK_FREQUENCY   = 100000000;
parameter CYCLES_PER_SAMPLE = CLOCK_FREQUENCY / BAUD_RATE;

// Registers
logic        r_reset;                    // register reset input
logic [0:7]  r_data;                     // register data input
logic        r_start_transmission;       // register start transmission input
logic [0:15] r_current_cycle_count;      // Cycle count for current sample; goes from 0 to CYCLES_PER_SAMPLE - 1
TxState      r_current_state;            // Current state of transmission
logic [0:3]  r_current_bit;              // Current data bit to be transmitted

// Wires
logic [0:15] w_next_cycle_count;         // Goes from 0 to CYCLES_PER_SAMPLE - 1
TxState      w_next_state;               // Next state of transmission
logic [0:3]  w_next_bit;                 // Next data bit to be transmitted;
                                         // this is a number between 0 and 8, hence 4 bits

always_comb
begin
  // Default is to transmit a 1 to show that the wire is alive
  o_tx = 1;

  // logic for maintaining baud rate
  if (r_reset == 1'b1) begin
    w_next_cycle_count = 0;
    w_next_state = IDLE;
    w_next_bit   = 0;
  end
  else begin
    w_next_cycle_count = r_current_cycle_count;
    w_next_state = r_current_state;
    w_next_bit   = r_current_bit;
  end

  // There has been a request to start transmission.
  if (r_current_state == IDLE) begin
    w_next_state = (r_start_transmission == 1) ? TRANSMIT_START_BIT : r_current_state;
  end

  // We should transmit a start bit of duration CYCLES_PER_SAMPLE cycles
  else if (r_current_state == TRANSMIT_START_BIT) begin
    w_next_cycle_count = r_current_cycle_count + 1;
    o_tx = 0;
    w_next_state       = (w_next_cycle_count == CYCLES_PER_SAMPLE) ? TRANSMIT_DATA_BITS : TRANSMIT_START_BIT;
    w_next_cycle_count = (w_next_cycle_count == CYCLES_PER_SAMPLE) ? 0 : w_next_cycle_count;
  end

  // Get to the next state of transmitting 8 data bits
  else if (r_current_state == TRANSMIT_DATA_BITS) begin
    $display("Within TRANSMIT_DATA_BITS, current cycle count is %d, current bit %d, current data is %d\n", r_current_cycle_count, r_current_bit, r_data[r_current_bit]);
    w_next_cycle_count = r_current_cycle_count + 1;
    o_tx               = r_data[r_current_bit];
    w_next_cycle_count = (w_next_cycle_count == CYCLES_PER_SAMPLE) ? 0 : w_next_cycle_count;
    if (w_next_cycle_count == 0) begin
      w_next_bit = w_next_bit + 1;
    end
    w_next_state       = (w_next_bit == 8) ? TRANSMIT_STOP_BIT : TRANSMIT_DATA_BITS;
    w_next_bit         = (w_next_bit == 8) ? 0 : w_next_bit;
  end

  // Transmit the stop bit
  else begin
    // if (r_current_state == TRANSMIT_STOP_BIT) begin (This is implicit.)
    // Verilog doesn't seem to have asserts during synthesis.
    w_next_cycle_count = r_current_cycle_count + 1;
    o_tx = 1;
    w_next_state       = (w_next_cycle_count == CYCLES_PER_SAMPLE) ? IDLE : TRANSMIT_STOP_BIT;
    w_next_cycle_count = (w_next_cycle_count == CYCLES_PER_SAMPLE) ? 0 : w_next_cycle_count;
  end
end

always_ff @(posedge clk)
begin
  r_reset                    <= i_reset;
  r_data                     <= i_data;
  r_start_transmission       <= i_start_transmission;
  r_current_cycle_count      <= w_next_cycle_count;
  r_current_state            <= w_next_state;
  r_current_bit              <= w_next_bit;
end

endmodule
