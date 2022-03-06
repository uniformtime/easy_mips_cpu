module aludec
	(input  logic [5:0] funct,
	 input  logic [1:0] aluop,
	 output logic [2:0] alucontrol);

always_comb
    case(aluop)
	2'b00: alucontrol <= 3'b010; // add (for lw/sw/addi)
	2'b01: alucontrol <= 3'b110; // sub (for beq)
	default: case(funct)	     // R-type instructions
	    6'b100000: alucontrol <=3'b010; // add
	    6'b100010: 