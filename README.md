# andromeda
Andromeda SDR project FPGA files
This repository holds the source for the Xilinx Artix-7 FPGA created using Vivado

Current version create using Vivado 2018.3; you **must** use the same version of vivado.

The file structure is:

sources
-coefficientfiles		.COE files for FIR filter coefficients and CW keyer ROM
-verilogmodules			various IP modules
-wrapper			holds the HDL wrapper for the block design

constraints			holds the .XDC constraint files

create_andromeda_project.tcl	script to recreate the project

We are not sure if this script is relocatable. We recommend you use the same directory structure we use.

To use this repository:
1. Install vivado 2018.3
2. Copy this repository to c:\xilinxdesigns\andromeda
3. Open vivado and find the TCL command line
4. type: cd c:/xilinxdesigns/andromeda
5. type: source create_andromeda_project.tcl

A new xilinx project will be created in the subdirectory andromeda_project

