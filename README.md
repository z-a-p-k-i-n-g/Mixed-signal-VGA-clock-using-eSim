# Mixed Signal Circuit Design and Simulation Marathon
# VGA-Clock
- [Abstract](#abstract)
- [Reference Display Configuration](#reference-display-configuration)
- [Circuit Details](#circuit-details)
- [Display timings](#display-timings)
- [Software Used](#software-used)
  * [eSim](#esim)
  * [NgSpice](#ngspice)
  * [Makerchip](#makerchip)
  * [Verilator](#verilator)
- [Circuit Diagram in eSim](#circuit-diagram-in-esim)
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

## Reference Display Configuration
![image](https://github.com/z-a-p-k-i-n-g/Mixed-signal-VGA-clock-using-eSim/blob/main/Images/display%20signals.png)
</br>
P.S - This image is rough...I will change it near future until then please bear with me :}

## Circuit Details
Analog part simply consists of few current limiting resistors to save the SoC in times of sudden short circuit.
</br>
In the digital part, there is a  display signal generation block to generate hsync and vsync signals for VGA, with the help of display timing information and a drawing logic block which implements the clock as FSM. The latter is also responsible for rendering time onto screen through  red, blue and green channels by reading data from ROM implemented for fonts and various .hex files included. Orginal code has been tweaked to work at refresh rate of 60Hz.    

## Display timings
   PIXEL_CLK   =   25000 </br>
    H_DISP      =   640</br>
    V_DISP      =   480</br>
    H_FPORCH    =   16</br>
    H_SYNC      =   96</br>
    H_BPORCH    =   48</br>
    V_FPORCH    =   10</br>
    V_SYNC      =   2</br>
    V_BPORCH    =   33</br>
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
![image](https://github.com/z-a-p-k-i-n-g/Mixed-signal-VGA-clock-using-eSim/blob/main/Images/circuit%20diagram.png)

## Netlists
![image](https://github.com/z-a-p-k-i-n-g/Mixed-signal-VGA-clock-using-eSim/blob/main/Images/netlist.png)

## NgSpice Plots
![image](https://github.com/z-a-p-k-i-n-g/Mixed-signal-VGA-clock-using-eSim/blob/main/Images/hsync.png)
![image](https://github.com/z-a-p-k-i-n-g/Mixed-signal-VGA-clock-using-eSim/blob/main/Images/vsync.png)


## Steps to run and generate NgVeri Model
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
```git clone  https://github.com/z-a-p-k-i-n-g/Mixed-signal-VGA-clock-using-eSim.git```</br>
3. Change directory:</br>
```cd eSim_project_files/VGAClock```</br>
4. Run ngspice:</br>
```ngspice VGAClock.cir.out```</br>
5. To run the project in eSim:

  - Run eSim</br>
  - Load the project</br>
  - Open eeSchema</br>
  
## Acknowlegdements 
1. Sumanto Kar, eSim Team, FOSSEE
2. Kunal Ghosh, Co-founder, VSD Corp. Pvt. Ltd. - kunalpghosh@gmail.com
3. Matt Venn for his VGA Clock design
4. FOSSEE, IIT Bombay


## References
1. ProjectF https://projectf.io/posts/fpga-graphics/
2. Matt Venn's VGA Clock design https://github.com/mattvenn/vga-clock.git


