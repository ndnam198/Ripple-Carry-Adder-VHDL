@echo off
set xv_path=C:\\Xilinx\\Vivado\\2017.2\\bin
call %xv_path%/xsim Tb_Ripple_Adder_behav -key {Behavioral:sim_1:Functional:Tb_Ripple_Adder} -tclbatch Tb_Ripple_Adder.tcl -view A:/Documents/code/VivadoLab/ripple_carry_adder_16bit/Ripple_Carry_Adder_behav.wcfg -log simulate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
