# XOR-XNOR-Gate
## Table of Contents
- [Abstract](#abstract)
- [Reference Circuit Diagram](#reference-circuit-diagram)
- [Reference Waveform](#reference-waveform)
- [Circuit Details](#circuit-details)
- [Truth Table](#truth-table)
- [Software Used](#software-used)
  * [eSim](#esim)
  * [NgSpice](#ngspice)

- [Circuit Diagram in eSim](#circuit-diagram-in-esim)
- [Netlists](#netlists)
- [NgSpice Plots](#ngspice-plots)
- [Steps to run this project](#steps-to-run-this-project)
- [Acknowlegdements](#acknowlegdements)
- [References](#references)

<small><i><a href='http://ecotrust-canada.github.io/markdown-toc/'>Table of contents generated with markdown-toc</a></i></small>

## Abstract
With the increasing technology, the size of the transistors is
reducing. The reducing size leads to the tradeoff between
power, efficiency and switching time. Because of which
there is requirement to design low power transistor with less
area and lesser number of gates. The design should use
lesser power as well. Thus, making it more and more
efficient.
## Reference Circuit Diagram
![image](https://user-images.githubusercontent.com/58599984/152688334-fa3ad04d-e142-4dd1-a0cf-00fd13ca2d9e.png)
## Reference Waveform
![image](https://user-images.githubusercontent.com/58599984/152688402-29877a15-deb3-4dee-9bcc-2313851182de.png)
## Circuit Details
As shown in the figure we have two cross coupled
circuits of PMOS logic and NMOS logic.
</br>
On the PMOS logic we are getting the output as XOR
while in the NMOS block we get the output as XNOR.
</br>
The transistors M4 and M3 behave as a pass transistor
and pass the output of M1, M2 and M5, M6
respectively.
</br>

The advantage of the above circuit is that it uses only
6 transistors and gives both outputs of XOR and
XNOR while the general circuit uses 8 transistors with
only one output either XOR or XNOR.
</br>
This way it consumes less space and less power and is
efficient in many ways.
</br>
## Truth Table

| Input A  | Input B | Output XOR  | Output XNOR |
| ------------- | ------------- | ------------- | ------------- |
| 0  | 0 | 0  | 1 |
| 0  | 1 | 1| 0|
| 1  | 0 |1|0|
| 1 | 1 |0|1|
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
![image](https://user-images.githubusercontent.com/58599984/156439904-bddbf2df-2c84-40cd-a7cc-d936715e1d96.png)

## Netlists
![image](https://user-images.githubusercontent.com/58599984/156440985-0a983124-b5ad-4b60-b83f-7adf0e7c36fb.png)
## NgSpice Plots
![image](https://user-images.githubusercontent.com/58599984/156440036-188911e0-9bb2-4d9f-b53d-878f5792d1c6.png)
![image](https://user-images.githubusercontent.com/58599984/156440082-c3f319ef-3224-4595-85e9-38bae135350f.png)

![image](https://user-images.githubusercontent.com/58599984/156439624-353c14ac-4216-4aa7-8207-64f4c287b2b7.png)
![image](https://user-images.githubusercontent.com/58599984/156439590-9371c62f-384b-42f8-9403-9704429d752d.png)
## GAW Plots
![image](https://user-images.githubusercontent.com/58599984/156439535-edb78fc7-a6e6-4178-864a-7cea5ea37e23.png)
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
  - Open eeSchema</br>
## Acknowlegdements
1. FOSSEE, IIT Bombay
2. Steve Hoover, Founder, Redwood EDA
3. Kunal Ghosh, Co-founder, VSD Corp. Pvt. Ltd. - kunalpghosh@gmail.com
4. Sumanto Kar, eSim Team, FOSSEE

## References
1. Ahmad, Nabihah & Hasan, Rezaul. (2011). A new design of XOR-XNOR gates for low power application. 10.1109/ICEDSA.2011.5959039. 
2. K. Ravali, N. R. Vijay, S. Jaggavarapu and R. Sakthivel, "Low power XOR gate design and its applications," 2017 Fourth International Conference on Signal Processing, Communication and Networking (ICSCN), 2017, pp. 1-4, doi: 10.1109/ICSCN.2017.8085699.
3. https://github.com/Eyantra698Sumanto/Two-in-One-Low-power-XOR-XNOR-Gate.git


