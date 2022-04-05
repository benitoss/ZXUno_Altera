`timescale 1ns / 1ps

//    This file is part of the ZXUNO Spectrum core. 
//    Creation date is 04:04:00 2012-04-01 by Miguel Angel Rodriguez Jodar
//    (c)2014-2020 ZXUNO association.
//    ZXUNO official repository: http://svn.zxuno.com/svn/zxuno
//    Username: guest   Password: zxuno
//    Github repository for this core: https://github.com/mcleod-ideafix/zxuno_spectrum_core
//
//    ZXUNO Spectrum core is free software: you can redistribute it and/or modify
//    it under the terms of the GNU General Public License as published by
//    the Free Software Foundation, either version 3 of the License, or
//    (at your option) any later version.
//
//    ZXUNO Spectrum core is distributed in the hope that it will be useful,
//    but WITHOUT ANY WARRANTY; without even the implied warranty of
//    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
//    GNU General Public License for more details.
//
//    You should have received a copy of the GNU General Public License
//    along with the ZXUNO Spectrum core.  If not, see <https://www.gnu.org/licenses/>.
//
//    Any distributed copy of this file must keep this notice intact.



/*
The sound mix is controlled by port #F7 (sets the mix for the
currently selected PSG). There are two channels for the beeper.
When one channel is active the beeper is at the same volume level as
a single PSG channel at full volume. When both are active and have
the same pan it is then double the volume of a single PSG channel.
This approximates the relative loudness of the beeper on 128K
machines.

D6-7:	channel A
D4-5:	channel B
D3-2:	channel C 
D1-0:	channel D (beeper)

Panning is limited to switching a channel on or off for a given
speaker. The bits are decoded as follows:

00 = mute
10 = left
01 = right
11 = both

The default port value on reset is zero (all channels off).
*/
module panner_and_mixer (
  input wire clk,
  input wire mrst_n,
  input wire [7:0] a,
  input wire iorq_n,
  input wire rd_n,
  input wire wr_n,
  input wire [7:0] din,
  output reg [7:0] dout,
  output reg oe,
  //--- SOUND SOURCES ---
  input wire mic,
  input wire ear,
  input wire spk,
  input wire [7:0] ay1_cha,
  input wire [7:0] ay1_chb,
  input wire [7:0] ay1_chc,
  input wire [7:0] ay2_cha,
  input wire [7:0] ay2_chb,
  input wire [7:0] ay2_chc,
  input wire [7:0] specdrum,
  input wire [15:0] midi_left,
  input wire [15:0] midi_right,
  input wire [ 7:0] saa_left,
  input wire [ 7:0] saa_right,
 
  // --- OUTPUTs ---
  output wire output_left,
  output wire output_right,
  output reg [15:0] left_i2s,
  output reg [15:0] right_i2s
  );

`include "config.vh"

  // Register accepts data from CPU
  reg [7:0] mixer = 8'b10_01_11_11; // ACB mode, Specdrum and beeper on both channels
  always @(posedge clk) begin
    if (mrst_n == 1'b0)
      mixer <= 8'b10_01_11_11;
    else if (a == AUDIOMIXER && iorq_n == 1'b0 && wr_n == 1'b0)
      mixer <= din;
  end
   
  // CPU reads register
  always @* begin
    dout = mixer;
    if (a == 8'hF7 && iorq_n == 1'b0 && rd_n == 1'b0)
      oe = 1'b1;
    else
      oe = 1'b0;
  end
   
  // Mixer for EAR, MIC and SPK
  reg [7:0] beeper;
  always @(posedge clk) begin
    case ({ear,spk,mic})
      3'b000: beeper <= 8'd0;
      3'b001: beeper <= 8'd36;
      3'b010: beeper <= 8'd184;
      3'b011: beeper <= 8'd192;
      3'b100: beeper <= 8'd64;
      3'b101: beeper <= 8'd100;
      3'b110: beeper <= 8'd248;
      3'b111: beeper <= 8'd255;      
    endcase
  end
  
  reg [10:0] mixleft = 11'h000;
  reg [10:0] mixright = 11'h000;
  reg [8:0] left, right;

  reg [10:0] ay1_cha_signed, ay1_chb_signed, ay1_chc_signed;
  reg [10:0] ay2_cha_signed, ay2_chb_signed, ay2_chc_signed;
  reg [10:0] beeper_signed, specdrum_signed;
  reg [15:0] saa_left_signed, saa_right_signed;
  always @(posedge clk) begin
    // extender a 11 bits
    ay1_cha_signed  <= {3'b000, ay1_cha};
    ay1_chb_signed  <= {3'b000, ay1_chb};
    ay1_chc_signed  <= {3'b000, ay1_chc};
    ay2_cha_signed  <= {3'b000, ay2_cha};
    ay2_chb_signed  <= {3'b000, ay2_chb};
    ay2_chc_signed  <= {3'b000, ay2_chc};
    beeper_signed   <= {3'b000, beeper};
    specdrum_signed <= {2'b00, specdrum, specdrum[7]};
	 saa_left_signed  <= {1'b0, saa_left, 2'b00};
    saa_right_signed <= {1'b0, saa_right, 2'b00};
    
    mixleft  <= ((mixer[7])? ay1_cha_signed + ay2_cha_signed : 11'h000 ) +
                ((mixer[5])? ay1_chb_signed + ay2_chb_signed : 11'h000 ) +
                ((mixer[3])? ay1_chc_signed + ay2_chc_signed : 11'h000 ) +
                ((mixer[1])? beeper_signed + specdrum_signed + saa_left_signed: 11'h000 );
    mixright <= ((mixer[6])? ay1_cha_signed + ay2_cha_signed : 11'h000 ) +
                ((mixer[4])? ay1_chb_signed + ay2_chb_signed : 11'h000 ) +
                ((mixer[2])? ay1_chc_signed + ay2_chc_signed : 11'h000 ) +
                ((mixer[0])? beeper_signed  + specdrum_signed + saa_right_signed: 11'h000 );
    left <= mixleft[10:2];
    right <= mixright[10:2];
	
  end

  
// Audio mix reimplementation
 


 
// audio output processing
wire [15:0] audio_mix_l = {1'b0, mixleft ,  mixleft[10:7]};
wire [15:0] audio_mix_r = {1'b0, mixright, mixright[10:7]};


reg [15:0] aud_l, aud_r;
always @(posedge clk) begin
	reg [15:0] old_l0, old_l1, old_r0, old_r1;
	
	old_l0 <= audio_mix_l;
	old_l1 <= old_l0;
	if(old_l0 == old_l1) aud_l <= old_l1;

	old_r0 <= audio_mix_r;
	old_r1 <= old_r0;
	if(old_r0 == old_r1) aud_r <= old_r1;
end

always @(posedge clk) begin
	reg [16:0] tmp_l, tmp_r;

	tmp_l <= {1'b0, aud_l} +  {midi_left[15] ,midi_left};
	tmp_r <= {1'b0, aud_r} +  {midi_right[15],midi_right};

	// clamp the output
	left_i2s  <= (^tmp_l[16:15]) ? {tmp_l[16], {15{tmp_l[15]}}} : tmp_l[15:0];
	right_i2s <= (^tmp_r[16:15]) ? {tmp_r[16], {15{tmp_r[15]}}} : tmp_r[15:0];
end


dac_dsm2v audio_dac_left(
   .clock_i (clk),
	.reset_i (!mrst_n),
	.dac_i   (left_i2s),
	.dac_o   (output_left)
);

dac_dsm2v audio_dac_right(
   .clock_i (clk),
	.reset_i (!mrst_n),
	.dac_i   (right_i2s),
	.dac_o   (output_right)
);
 
endmodule
