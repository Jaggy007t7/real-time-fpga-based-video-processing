timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Jageshwar
// 
// Create Date: 12.06.2026 14:42:46
// Design Name: 
// Module Name: invert_filter_v1
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

module invert_filter_v1 (

    input  wire        PixelClk,

    input  wire        vid_pHSync_in,
    input  wire        vid_pVSync_in,
    input  wire        vid_pVDE_in,
    input  wire [23:0] vid_pData_in,

    output reg         vid_pHSync_out,
    output reg         vid_pVSync_out,
    output reg         vid_pVDE_out,
    output reg [23:0]  vid_pData_out

);

    // Stage 1:-
    reg [23:0] rgb_stage1;
    reg        hsync_stage1;
    reg        vsync_stage1;
    reg        vde_stage1;
  
    always @(posedge PixelClk)
    begin
        rgb_stage1   <= ~vid_pData_in;

        hsync_stage1 <= vid_pHSync_in;
        vsync_stage1 <= vid_pVSync_in;
        vde_stage1   <= vid_pVDE_in;
    end

  
    //Stage 2:-
    reg [23:0] rgb_stage2;
    reg        hsync_stage2;
    reg        vsync_stage2;
    reg        vde_stage2;
  
    always @(posedge PixelClk)
    begin
        rgb_stage2   <= rgb_stage1;

        hsync_stage2 <= hsync_stage1;
        vsync_stage2 <= vsync_stage1;
        vde_stage2   <= vde_stage1;
    end

    // Final output:-
    always @(posedge PixelClk)
    begin
        vid_pData_out <= rgb_stage2;

        vid_pHSync_out <= hsync_stage2;
        vid_pVSync_out <= vsync_stage2;
        vid_pVDE_out   <= vde_stage2;
    end

endmodule
