Controller for Distributed Power Processing in Battery Packs
John Miller
milljohnster (at) gmail.com 
2018 ReU (Research Undergrad) New Mexico State University
Sources are commented in the code

Languages: VHDL, Verilog HDL
Software:  Quartus II 15.0 & 17.1
Device:    Altera DE10_Nano (Initially, Altera DE0-CV)

Quartus Projects:
	PWM_DE10: Generates two sets of PWM waves, one set has a changing phase with respect to the other. Outputs to GPIO.
	system10_pwm: Attempts to communicate with ADC. Soft processor NIOS II is used. Communication not working.

Synopsis: The scope of the project is to drive a Dual-Active-Bridge with an FPGA. The FPGA will adjust the PWM signal based on sensor readings using a PID controller.

NOTES: This project is incomplete. The ADC and sensor input is not finished. The PID controller is not started.