# Real Time FPGA based Video Processing

A collection of FPGA-based mini and mid-scale projects focused on real-time video processing, streaming image pipelines, and hardware-accelerated HDMI applications.

---

# HDMI_Input_Output_With_Color_Inversion

Real-time HDMI video processing project using **PYNQ-Z2 FPGA**, **Verilog HDL**, and **Vivado Design Suite**.

This project captures HDMI video input, processes the video stream inside FPGA fabric using a custom pipelined Verilog filter, and displays the processed output through HDMI in real time.

---

# Video Pipeline

```text
HDMI Input
    ↓
DVI2RGB IP
    ↓
Custom Verilog Filter
    ↓
RGB2DVI IP
    ↓
HDMI Output
```

---

# Features

- Real-Time HDMI Video Processing
- Fully Pipelined Verilog Design
- Color Inversion Filter
- HDMI Input & Output Interfacing
- Low-Latency Video Processing
- Vivado IP Integrator Based Design

---

# Filter Logic

```verilog
rgb_stage1 <= ~vid_pData_in;
```

The incoming RGB pixel stream is inverted in real time using a pipelined hardware architecture.

---

# Vivado Block Design

<img width="1674" height="759" alt="Screenshot 2026-06-12 162130" src="https://github.com/user-attachments/assets/176ce970-323a-4083-907f-2f54ad8bbeb8" />

---

# Output Result

<img width="1280" height="720" alt="image" src="https://github.com/user-attachments/assets/d2bb15e2-8ace-4e9a-b201-709ab847eaae" />
<img width="1280" height="720" alt="image" src="https://github.com/user-attachments/assets/20e6f4f5-1a92-464d-a0a1-57a570013b51" />

---

# Output Demonstration Videos

https://github.com/user-attachments/assets/8e1ff348-2169-498a-b359-2597b283e73b

https://github.com/user-attachments/assets/bd0c45b6-aaae-4cff-a772-a99176011f67

---

# Tools & Technologies

- Verilog HDL
- Vivado Design Suite
- PYNQ-Z2 FPGA
- HDMI Interface
- DVI2RGB IP
- RGB2DVI IP
- FPGA Video Processing
