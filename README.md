# Mixed Signal Circuit Design and Simulation Marathon
# VGA-Clock
- [Abstract](#abstract)
- [Reference Waveform](#reference-waveform)
- [Circuit Details](#circuit-details)
- [Display timings for 640x480@60Hz](#display-timings)
- [Software Used](#software-used)
  * [eSim](#esim)
  * [NgSpice](#ngspice)
  * [Makerchip](#makerchip)
  * [Verilator](#verilator)
- [Circuit Diagram in eSim](#circuit-diagram-in-esim)
- [Verilog Code](#verilog-code)
- [Netlists](#netlists)
- [NgSpice Plots](#ngspice-plots)
- [Steps to run generate NgVeri Model](#steps-to-run-generate-ngveri-model)
- [Steps to run this project](#steps-to-run-this-project)
- [Acknowlegdements](#acknowlegdements)
- [References](#references)

<small><i><a href='http://ecotrust-canada.github.io/markdown-toc/'>Table of contents generated with markdown-toc</a></i></small>


## Abstract
A mixed signal SoC capable of displaying time through VGA interface at 640x480@60Hz, has been implemented through eSim. It works on 25MHz clock frequency based on standard VGA timing standards.
It outputs display signals namely vsync and hsync, along with 6-bit RGB video output. 

## Reference Waveform
![image](https://user-images.githubusercontent.com/58599984/152688402-29877a15-deb3-4dee-9bcc-2313851182de.png)

## Circuit Details
Analog part simply consists of few current limiting resistors to save the SoC in times of sudden short circuit.
</br>
In the digital part, there is a  display signal generation block to generate hsync and vsync signals for VGA, with the help of display timing information and a drawing logic block which implements the clock as FSM. The latter is also responsible for rendering time onto screen through  red, blue and green channels by reading data from ROM implemented for fonts and various .hex files included. Orginal code has been tweaked to work at refresh rate of 60Hz.    

## Display timings
   PIXEL_CLK   =   25000
    H_DISP      =   640
    V_DISP      =   480
    H_FPORCH    =   16
    H_SYNC      =   96
    H_BPORCH    =   48
    V_FPORCH    =   10
    V_SYNC      =   2
    V_BPORCH    =   33
    Sync polarity is negative for both hsync and vsync


## Software Used
### eSim
It is an Open Source EDA developed by FOSSEE, IIT Bombay. It is used for electronic circuit simulation. It is made by the combination of two software namely NgSpice and KiCAD.
</br>
For more details refer:
</br>
https://esim.fossee.in/home
### NgSpice
It is an Open Source Software for Spice Simulations. For more details refer:
</br>
http://ngspice.sourceforge.net/docs.html
### Makerchip
It is an Online Web Browser IDE for Verilog/System-verilog/TL-Verilog Simulation. Refer
</br> https://www.makerchip.com/
### Verilator
It is a tool which converts Verilog code to C++ objects. Refer:
https://www.veripool.org/verilator/

## Circuit Diagram in eSim
The following is the schematic in eSim:
![image](https://user-images.githubusercontent.com/58599984/156439856-079de481-b68d-4955-b9c9-6ff310c5de58.png)
## Verilog Code
![image](https://user-images.githubusercontent.com/58599984/156445908-1af8255c-d17c-4275-8e24-ee65c96af66a.png)
## Netlists
![image](https://user-images.githubusercontent.com/58599984/156440985-0a983124-b5ad-4b60-b83f-7adf0e7c36fb.png)
## NgSpice Plots
![image](https://user-images.githubusercontent.com/58599984/156440036-188911e0-9bb2-4d9f-b53d-878f5792d1c6.png)
![image](https://user-images.githubusercontent.com/58599984/156440082-c3f319ef-3224-4595-85e9-38bae135350f.png)

![image](https://user-images.githubusercontent.com/58599984/156439624-353c14ac-4216-4aa7-8207-64f4c287b2b7.png)
![image](https://user-images.githubusercontent.com/58599984/156439590-9371c62f-384b-42f8-9403-9704429d752d.png)

## Steps to run generate NgVeri Model
1. Open eSim
2. Run NgVeri-Makerchip 
3. Add top level verilog file in Makerchip Tab
4. Click on NgVeri tab
5. Add dependency files
6. Click on Run Verilog to NgSpice Converter
7. Debug if any errors
8. Model created successfully
## Steps to run this project
1. Open a new terminal
2. Clone this project using the following command:</br>
```git clone https://github.com/Eyantra698Sumanto/XOR-XNOR-Gate.git ```</br>
3. Change directory:</br>
```cd eSim_project_files/xor_xnor```</br>
4. Run ngspice:</br>
```ngspice xor_xnor.cir.out```</br>
5. To run the project in eSim:

  - Run eSim</br>
  - Load the project</br>
  - Run NgVeri and convert verilog top module (vishal_clock) into ngspice model.
  - Add dependency files and change the location of .hex and .list files in fontROM.v and digit.v files, if error regarding that comes up.
  - Open eeSchema</br>
  
## Acknowlegdements 
1. Sumanto Kar, eSim Team, FOSSEE
2. Kunal Ghosh, Co-founder, VSD Corp. Pvt. Ltd. - kunalpghosh@gmail.com
3. Matt Venn for his VGA Clock design
4. FOSSEE, IIT Bombay


## References
1. ProjectF https://projectf.io/posts/fpga-graphics/
2. Matt Venn's VGA Clock design https://github.com/mattvenn/vga-clock.git


