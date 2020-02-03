@echo off
set xv_path=C:\\Xilinx\\Vivado\\2017.2\\bin
call %xv_path%/xelab  -wto 5b30ac7b85be4a939b1b8f0e38447838 -m64 --debug typical --relax --mt 2 -L xil_defaultlib -L secureip --snapshot Tb_Ripple_Adder_behav xil_defaultlib.Tb_Ripple_Adder -log elaborate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
