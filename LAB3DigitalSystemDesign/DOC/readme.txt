-------- * read me file * ---------

Adder - FA component
ALU_core - alu combinational
ALU_top - envelope for ALU include REG A and REG C make the sync part
aux_package - declare all the components for the project
BidirPin - bi directional pin for bus
Control - control component who control the signals
dataMEM - include the data memory 
Datapath - control the bus using the signals from the control unit
mod_dataMEM - envelope for the memory include all the mux and DFF
progMEM - memory for the program
pcWork - include the PC work for the increase adress
mod_progMEM - envelope the PC work with the progMEM
RF - register file include the registers
mod_RF - envelope the IR register and RFaddr mux for the reg file
opcDecode - decode the state for the FSM of the control
mod_progtoRF - envelope the mod_progmem and mod_rf and opcDecode
top - enevelope the datapath and control and interface with the out signals

--------------------------------------------------  