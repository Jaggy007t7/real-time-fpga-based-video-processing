`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Jageshwar
// 
// Create Date: 13.06.2026 14:53:25
// Design Name: 
// Module Name: red_thresholding
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module red_thresholding_v2(
    input  wire PixelClk,
    input  wire ctrl,
    input  wire vid_pHSync_in,
    input  wire vid_pVSync_in,
    input  wire vid_pVDE_in,
    input  wire [23:0]RGB_in,
    
    output reg vid_pHSync_out,
    output reg vid_pVSync_out,
    output reg vid_pVDE_out,
    output reg [23:0]RGB_out
    
    );
    
    // Stage 1:-
    reg [23:0] rgb_stage1;
    reg        hsync_stage1;
    reg        vsync_stage1;
    reg        vde_stage1;
    
    // Stage 2:-
    reg [23:0] rgb_stage2;
    reg        hsync_stage2;
    reg        vsync_stage2;
    reg        vde_stage2;
    
    always @(posedge PixelClk)begin 
        if(ctrl && vid_pVDE_in)begin
          if( (RGB_in[23:16] > 8'd150) && (RGB_in[15:8]  < 8'd100) && (RGB_in[7:0]   < 8'd100) && (RGB_in[23:16] > (RGB_in[7:0]  + 8'd40)) )begin     // Important logic for correct thresholding of red colour.
                rgb_stage1<={8'd255,8'd0,8'd0};
            end
            else begin 
                rgb_stage1<=24'b0;
            end
        end
        else begin 
            rgb_stage1<=RGB_in;
        end
        hsync_stage1 <= vid_pHSync_in;
        vsync_stage1 <= vid_pVSync_in;
        vde_stage1   <= vid_pVDE_in;
    
    end
    
    always @(posedge PixelClk)begin 
        rgb_stage2   <= rgb_stage1;

        hsync_stage2 <= hsync_stage1;
        vsync_stage2 <= vsync_stage1;
        vde_stage2   <= vde_stage1;
 
    end
    
    always @(posedge PixelClk)begin 
        RGB_out <= rgb_stage2;

        vid_pHSync_out <= hsync_stage2;
        vid_pVSync_out <= vsync_stage2;
        vid_pVDE_out   <= vde_stage2;
    
    end
    
endmodule 
