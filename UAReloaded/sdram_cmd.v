//-------------------------------------------------------------------------------------------------
//  SDRAM commands
//  Copyright (C) 2022 Kyp069 <kyp069@gmail.com>
//
//  This program is free software; you can redistribute it and/or modify it
//  under the terms of the GNU General Public License as published by the Free
//  Software Foundation; either version 2 of the License, or (at your option)
//  any later version.
//
//  This program is distributed in the hope that it will be useful, but WITHOUT
//  ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or
//  FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License for
//  more details.
//
//  You should have received a copy of the GNU General Public License along
//  with this program; if not, write to the Free Software Foundation, Inc.,
//  51 Franklin Street, Fifth Floor, Boston, MA 02110-1301 USA.
//-------------------------------------------------------------------------------------------------
// ram commands
//-------------------------------------------------------------------------------------------------

task INHIBIT;
begin
	sdramCs  <= 1'b1;
	sdramRas <= 1'b1;
	sdramCas <= 1'b1;
	sdramWe  <= 1'b1;
	sdramDqm <= 2'b11;
	sdramBA  <= 2'b00;
	sdramA   <= 13'h0000;
end
endtask

task NOP;
begin
	sdramCs  <= 1'b0;
	sdramRas <= 1'b1;
	sdramCas <= 1'b1;
	sdramWe  <= 1'b1;
	sdramDqm <= 2'b11;
	sdramBA  <= 2'b00;
	sdramA   <= 13'h0000;
end
endtask

task REFRESH;
begin
	sdramCs  <= 1'b0;
	sdramRas <= 1'b0;
	sdramCas <= 1'b0;
	sdramWe  <= 1'b1;
	sdramDqm <= 2'b11;
	sdramBA  <= 2'b00;
	sdramA   <= 13'h0000;
end
endtask

task PRECHARGE;
input pca;
begin
	sdramCs  <= 1'b0;
	sdramRas <= 1'b0;
	sdramCas <= 1'b1;
	sdramWe  <= 1'b0;
	sdramDqm <= 2'b11;
	sdramBA  <= 2'b00;
	sdramA   <= { 2'b00, pca, 9'b0 };
end
endtask

task LMR;
input[12:0] mode;
begin
	sdramCs  <= 1'b0;
	sdramRas <= 1'b0;
	sdramCas <= 1'b0;
	sdramWe  <= 1'b0;
	sdramDqm <= 2'b11;
	sdramBA  <= 2'b00;
	sdramA   <= mode;
end
endtask

task ACTIVE;
input[ 1:0] ba;
input[12:0] a;
begin
	sdramCs  <= 1'b0;
	sdramRas <= 1'b0;
	sdramCas <= 1'b1;
	sdramWe  <= 1'b1;
	sdramDqm <= 2'b11;
	sdramBA  <= ba;
	sdramA   <= a;
end
endtask

task WRITE;
input[ 1:0] dqm;
input[ 1:0] ba;
input[ 8:0] a;
input pca;
begin
	sdramCs  <= 1'b0;
	sdramRas <= 1'b1;
	sdramCas <= 1'b0;
	sdramWe  <= 1'b0;
	sdramDqm <= dqm;
	sdramBA  <= ba;
	sdramA   <= { 2'b00, pca, 1'b0, a };
end
endtask

task READ;
input[ 1:0] dqm;
input[ 1:0] ba;
input[ 8:0] a;
input pca;
begin
	sdramCs  <= 1'b0;
	sdramRas <= 1'b1;
	sdramCas <= 1'b0;
	sdramWe  <= 1'b1;
	sdramDqm <= dqm;
	sdramBA  <= ba;
	sdramA   <= { 2'b00, pca, 1'b0, a };
end
endtask

//-------------------------------------------------------------------------------------------------
