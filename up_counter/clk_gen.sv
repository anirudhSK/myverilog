module clk_gen (
  input   logic   clk_in,
  input   logic   reset,
  output  logic   clk_out,
  output  logic   locked
);

// Input buffering
logic clk_in_clk_wiz_gen;
IBUF clkin1_ibufg
  (.O (clk_in_clk_wiz_gen),
   .I (clk_in));

// Clocking PRIMITIVE

// Instantiation of the MMCM PRIMITIVE
// * Unused inputs are tied off
// * Unused outputs are labeled unused
logic clk_out_clk_wiz_gen;
logic [15:0] do_unused;
logic drdy_unused;
logic psdone_unused;
logic locked_int;
logic clkfbout_clk_wiz_gen;
logic clkfbout_buf_clk_wiz_gen;
logic clkfboutb_unused;
logic clkout0b_unused;
logic clkout1_unused;
logic clkout1b_unused;
logic clkout2_unused;
logic clkout2b_unused;
logic clkout3_unused;
logic clkout3b_unused;
logic clkout4_unused;
logic clkout5_unused;
logic clkout6_unused;
logic clkfbstopped_unused;
logic clkinstopped_unused;
logic reset_high;

MMCME2_ADV
#(.BANDWIDTH            ("OPTIMIZED"),
  .CLKOUT4_CASCADE      ("FALSE"),
  .COMPENSATION         ("ZHOLD"),
  .STARTUP_WAIT         ("FALSE"),
  .DIVCLK_DIVIDE        (5),
  .CLKFBOUT_MULT_F      (50.250),
  .CLKFBOUT_PHASE       (0.000),
  .CLKFBOUT_USE_FINE_PS ("FALSE"),
  .CLKOUT0_DIVIDE_F     (3.750),
  .CLKOUT0_PHASE        (0.000),
  .CLKOUT0_DUTY_CYCLE   (0.500),
  .CLKOUT0_USE_FINE_PS  ("FALSE"),
  .CLKIN1_PERIOD        (10.0))

mmcm_adv_inst
 (
  // Disable all but output clock 1
  .CLKFBOUT            (clkfbout_clk_wiz_gen),
  .CLKFBOUTB           (clkfboutb_unused),
  .CLKOUT0             (clk_out_clk_wiz_gen),
  .CLKOUT0B            (clkout0b_unused),
  .CLKOUT1             (clkout1_unused),
  .CLKOUT1B            (clkout1b_unused),
  .CLKOUT2             (clkout2_unused),
  .CLKOUT2B            (clkout2b_unused),
  .CLKOUT3             (clkout3_unused),
  .CLKOUT3B            (clkout3b_unused),
  .CLKOUT4             (clkout4_unused),
  .CLKOUT5             (clkout5_unused),
  .CLKOUT6             (clkout6_unused),
   // Input clock control
  .CLKFBIN             (clkfbout_buf_clk_wiz_gen),
  .CLKIN1              (clk_in_clk_wiz_gen),
  .CLKIN2              (1'b0),
   // Tied to always select the primary input clock
  .CLKINSEL            (1'b1),
  // Ports for dynamic reconfiguration
  .DADDR               (7'h0),
  .DCLK                (1'b0),
  .DEN                 (1'b0),
  .DI                  (16'h0),
  .DO                  (do_unused),
  .DRDY                (drdy_unused),
  .DWE                 (1'b0),
  // Ports for dynamic phase shift
  .PSCLK               (1'b0),
  .PSEN                (1'b0),
  .PSINCDEC            (1'b0),
  .PSDONE              (psdone_unused),
  // Other control and status signals
  .LOCKED              (locked_int),
  .CLKINSTOPPED        (clkinstopped_unused),
  .CLKFBSTOPPED        (clkfbstopped_unused),
  .PWRDWN              (1'b0),
  .RST                 (reset_high));

assign reset_high = reset;
assign locked     = locked_int;
 
// Output buffering
BUFG clkf_buf
 (.O (clkfbout_buf_clk_wiz_gen),
  .I (clkfbout_clk_wiz_gen));

BUFG clkout1_buf
 (.O   (clk_out),
  .I   (clk_out_clk_wiz_gen));

endmodule
