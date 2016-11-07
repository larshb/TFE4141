@echo off
set xv_path=C:\\Xilinx\\Vivado\\2016.2\\bin
call %xv_path%/xsim EdgeCounter_tb_behav -key {Behavioral:sim_1:Functional:EdgeCounter_tb} -tclbatch EdgeCounter_tb.tcl -log simulate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
