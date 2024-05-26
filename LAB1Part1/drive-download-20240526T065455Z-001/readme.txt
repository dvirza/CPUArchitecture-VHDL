
Readme- Dvir Zaguri - Elad Hubashi

AdderSub.vhd - Contains the arithmetic module implementation  code, declared components and its logic is receiving 2 vector of length n and a operator in 3 bits received from the ALUFN and according to the operators table from the task doc to do the requested operation on the 2 input n-length vectors X, Y.
\
auxpackage.vhd - a file that connecting a different components or declared general variables between all the files. Each module that well defined should be declared there to share modules/components with each other.
\
FA.vhd - given file that implement a simple 1-bit full adder that receives c_in, x, y and results a result bit and a c_o.
\
Logic.vhd - Contains Boolean module code. Simple logic operations on the input vectors X and Y according to the bits ALUFN[2:0] operates one of 6 requested boolean operations. Implemented with a simple included VHDL base functions.
\
Shifter.vhd - Contains the shift module implementation code, declared components and its logic is receiving 2 vector of length n and a operator in 1 bit direction received from the ALUFN and according to the operators table from the task doc to do the requested operation on the input vector Y based on the received direction and the amount of shifts is X[:k].
\
top.vhd - Contains the while system connections code. This files has the code that make this whole rules and modules to a simple I/O system. This file used to lead each 2 vectors X,Y and operator to the relevant module and modify its inputs and outputs correctly with the right size and sort.