`timescale 1ns / 1ps
module universal_shift_reg(clk,rst,select,p_din,s_left_din,
          s_right_din,p_dout);
  input clk, rst;
  input [1:0] select; 
  input [3:0] p_din; 
  input s_left_din;  
  input s_right_din;  
  output[3:0] p_dout;
//  output s_left_dout; 
//  output s_right_dout;
  wire w1,w2,w3,w4;
  mux_4_1 mux0(p_dout[0],p_dout[1],s_left_din,p_din[0],w1,select);
  d_flip_flop dff0(w1,clk,p_dout[0],rst);
  mux_4_1 mux1(p_dout[1],p_dout[2],p_dout[0],p_din[1],w2,select);
  d_flip_flop dff1(w2,clk,p_dout[1],rst);
  mux_4_1 mux2(p_dout[2],p_dout[3],p_dout[1],p_din[2],w3,select);
  d_flip_flop dff2(w3,clk,p_dout[2],rst);
  mux_4_1 mux3(p_dout[3],s_right_din,p_dout[2],p_din[3],w4,select);
  d_flip_flop dff3(w4,clk,p_dout[3],rst);
endmodule
