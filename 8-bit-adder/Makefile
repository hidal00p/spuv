# Add the name of component there
COMPONENT = 8_bit_adder

# Add paths to dependency components
INCLUDE_FLAGS = -I"../full-adder"

all: exe

exe: $(COMPONENT)_tb.vvp 
	@vvp $<

view: all
	gtkwave $(COMPONENT).vcd

$(COMPONENT)_tb.vvp: $(COMPONENT).v $(COMPONENT)_tb.v
	@iverilog $(INCLUDE_FLAGS) -o $(COMPONENT)_tb.vvp $(COMPONENT)_tb.v

start:
	touch $(COMPONENT).v $(COMPONENT)_tb.v

clean:
	rm -f $(COMPONENT)_tb.vvp $(COMPONENT).vcd

.PHONY: clean start
