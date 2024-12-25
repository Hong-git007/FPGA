
TOPLEVEL = tb_fsm_test
WAVEFORM_FILE = simulate_xsim_tb_fsm_test.wdb

# Define rules

xvlog:
	xvlog ./fsm_test.v ./tb_fsm_test.v

xelab:
	xelab $(TOPLEVEL) -debug wave -s $(TOPLEVEL)

xsim:
	xsim $(TOPLEVEL) -gui -wdb $(WAVEFORM_FILE)

all: 
	xvlog ./fsm_test.v ./tb_fsm_test.v
	xelab $(TOPLEVEL) -debug wave -s $(TOPLEVEL)
	xsim $(TOPLEVEL) -gui -wdb $(WAVEFORM_FILE)

clean : 
	rm -rf *xe* *xs* *.wdb* *trace* *xv* *webtalk* *backup* .Xil .hbs

#Phony targets
.PHONY: all xvlog xelab xsim clean

