# 
# Synthesis run script generated by Vivado
# 

debug::add_scope template.lib 1
set_msg_config -id {HDL 9-1061} -limit 100000
set_msg_config -id {HDL 9-1654} -limit 100000
create_project -in_memory -part xc7a35tftg256-1

set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_property webtalk.parent_dir F:/Project/Project.cache/wt [current_project]
set_property parent.project_path F:/Project/Project.xpr [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language Verilog [current_project]
read_verilog -library xil_defaultlib -sv {
  D:/Users/TEMP/Desktop/Project_files/Ready_Modules/stepmotor.sv
  F:/Project/Project.srcs/sources_1/new/UserKeyboardMap.sv
  D:/Users/TEMP/Desktop/Project_files/Ready_Modules/SevSeg_4digit.sv
  F:/Project/Project.srcs/sources_1/new/RandomCodeGenerator.sv
  D:/Users/TEMP/Desktop/Project_files/Ready_Modules/keypad4X4.sv
  F:/Project/Project.srcs/sources_1/new/Increment_Decrement.sv
  F:/Project/Project.srcs/sources_1/new/Comparator.sv
  D:/Users/TEMP/Desktop/Project_files/Ready_Modules/steppermotor_wrapper.sv
  F:/Project/Project.srcs/sources_1/new/Main.sv
}
read_xdc F:/Project/Project.srcs/constrs_1/new/cons.xdc
set_property used_in_implementation false [get_files F:/Project/Project.srcs/constrs_1/new/cons.xdc]

synth_design -top Main -part xc7a35tftg256-1
write_checkpoint -noxdef Main.dcp
catch { report_utilization -file Main_utilization_synth.rpt -pb Main_utilization_synth.pb }