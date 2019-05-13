# 
# Synthesis run script generated by Vivado
# 

set TIME_start [clock seconds] 
proc create_report { reportName command } {
  set status "."
  append status $reportName ".fail"
  if { [file exists $status] } {
    eval file delete [glob $status]
  }
  send_msg_id runtcl-4 info "Executing : $command"
  set retval [eval catch { $command } msg]
  if { $retval != 0 } {
    set fp [open $status w]
    close $fp
    send_msg_id runtcl-5 warning "$msg"
  }
}
set_param synth.incrementalSynthesisCache C:/Users/mgamlem19/Desktop/super-octo-train-michael_test/super-octo-train-michael_test/MP3/FINAL/.Xil/Vivado-4152-LAB-SCI-214-04/incrSyn
set_param xicom.use_bs_reader 1
set_msg_config -id {Synth 8-256} -limit 10000
set_msg_config -id {Synth 8-638} -limit 10000
create_project -in_memory -part xc7a100tcsg324-1

set_param project.singleFileAddWarning.threshold 0
set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_property webtalk.parent_dir C:/Users/mgamlem19/Desktop/super-octo-train-michael_test/super-octo-train-michael_test/MP3/FINAL/mips.cache/wt [current_project]
set_property parent.project_path C:/Users/mgamlem19/Desktop/super-octo-train-michael_test/super-octo-train-michael_test/MP3/FINAL/mips.xpr [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language VHDL [current_project]
set_property board_part digilentinc.com:nexys4_ddr:part0:1.1 [current_project]
set_property ip_output_repo c:/Users/mgamlem19/Desktop/super-octo-train-michael_test/super-octo-train-michael_test/MP3/FINAL/mips.cache/ip [current_project]
set_property ip_cache_permissions {read write} [current_project]
read_mem C:/Users/mgamlem19/Desktop/super-octo-train-michael_test/super-octo-train-michael_test/MP3/FINAL/mips.srcs/sources_1/imports/new/memfile.dat
read_verilog -library xil_defaultlib {
  C:/Users/mgamlem19/Desktop/super-octo-train-michael_test/super-octo-train-michael_test/MP3/FINAL/mips.srcs/sources_1/imports/PmodJSTK.srcs/spiCtrl.v
  C:/Users/mgamlem19/Desktop/super-octo-train-michael_test/super-octo-train-michael_test/MP3/FINAL/mips.srcs/sources_1/imports/PmodJSTK.srcs/SPImode0.v
  C:/Users/mgamlem19/Desktop/super-octo-train-michael_test/super-octo-train-michael_test/MP3/FINAL/mips.srcs/sources_1/imports/PmodJSTK.srcs/PmodJSTK_Demo.v
  C:/Users/mgamlem19/Desktop/super-octo-train-michael_test/super-octo-train-michael_test/MP3/FINAL/mips.srcs/sources_1/imports/PmodJSTK.srcs/ClkDiv_5Hz.v
  C:/Users/mgamlem19/Desktop/super-octo-train-michael_test/super-octo-train-michael_test/MP3/FINAL/mips.srcs/sources_1/imports/PmodJSTK.srcs/Binary_To_BCD.v
  C:/Users/mgamlem19/Desktop/super-octo-train-michael_test/super-octo-train-michael_test/MP3/FINAL/mips.srcs/sources_1/imports/PmodJSTK.srcs/ssdCtrl.v
  C:/Users/mgamlem19/Desktop/super-octo-train-michael_test/super-octo-train-michael_test/MP3/FINAL/mips.srcs/sources_1/imports/PmodJSTK.srcs/ClkDiv_66_67kHz.v
  C:/Users/mgamlem19/Desktop/super-octo-train-michael_test/super-octo-train-michael_test/MP3/FINAL/mips.srcs/sources_1/imports/PmodJSTK.srcs/PmodJSTK.v
}
read_vhdl -library xil_defaultlib {
  C:/Users/mgamlem19/Desktop/super-octo-train-michael_test/super-octo-train-michael_test/MP3/FINAL/mips.srcs/sources_1/imports/new/mips.vhd
  C:/Users/mgamlem19/Desktop/super-octo-train-michael_test/super-octo-train-michael_test/MP3/FINAL/mips.srcs/sources_1/imports/new/mips_mem_instructions.vhd
  C:/Users/mgamlem19/Desktop/super-octo-train-michael_test/super-octo-train-michael_test/MP3/FINAL/mips.srcs/sources_1/imports/new/mips_shift_left_by_2.vhd
  C:/Users/mgamlem19/Desktop/super-octo-train-michael_test/super-octo-train-michael_test/MP3/FINAL/mips.srcs/sources_1/imports/new/mips_datapath.vhd
  C:/Users/mgamlem19/Desktop/super-octo-train-michael_test/super-octo-train-michael_test/MP3/FINAL/mips.srcs/sources_1/imports/new/mips_top.vhd
  C:/Users/mgamlem19/Desktop/super-octo-train-michael_test/super-octo-train-michael_test/MP3/FINAL/mips.srcs/sources_1/imports/new/mips_adder.vhd
  C:/Users/mgamlem19/Desktop/super-octo-train-michael_test/super-octo-train-michael_test/MP3/FINAL/mips.srcs/sources_1/imports/new/mips_mem_data.vhd
  C:/Users/mgamlem19/Desktop/super-octo-train-michael_test/super-octo-train-michael_test/MP3/FINAL/mips.srcs/sources_1/imports/new/mips_decoder_alu.vhd
  C:/Users/mgamlem19/Desktop/super-octo-train-michael_test/super-octo-train-michael_test/MP3/FINAL/mips.srcs/sources_1/imports/new/mips_decoder_main.vhd
  C:/Users/mgamlem19/Desktop/super-octo-train-michael_test/super-octo-train-michael_test/MP3/FINAL/mips.srcs/sources_1/imports/new/computer_top.vhd
  C:/Users/mgamlem19/Desktop/super-octo-train-michael_test/super-octo-train-michael_test/MP3/FINAL/mips.srcs/sources_1/imports/new/mips_controller.vhd
  C:/Users/mgamlem19/Desktop/super-octo-train-michael_test/super-octo-train-michael_test/MP3/FINAL/mips.srcs/sources_1/imports/new/mips_register_file.vhd
  C:/Users/mgamlem19/Desktop/super-octo-train-michael_test/super-octo-train-michael_test/MP3/FINAL/mips.srcs/sources_1/imports/new/mips_sign_extender.vhd
  C:/Users/mgamlem19/Desktop/super-octo-train-michael_test/super-octo-train-michael_test/MP3/FINAL/mips.srcs/sources_1/imports/new/display_hex.vhd
  C:/Users/mgamlem19/Desktop/super-octo-train-michael_test/super-octo-train-michael_test/MP3/FINAL/mips.srcs/sources_1/imports/new/mips_flip_flop_register.vhd
  C:/Users/mgamlem19/Desktop/super-octo-train-michael_test/super-octo-train-michael_test/MP3/FINAL/mips.srcs/sources_1/imports/new/mips_multiplexer_2_input.vhd
  C:/Users/mgamlem19/Desktop/super-octo-train-michael_test/super-octo-train-michael_test/MP3/FINAL/mips.srcs/sources_1/imports/new/left_shifter.vhd
  C:/Users/mgamlem19/Desktop/super-octo-train-michael_test/super-octo-train-michael_test/MP3/FINAL/mips.srcs/sources_1/imports/new/right_shifter.vhd
  C:/Users/mgamlem19/Desktop/super-octo-train-michael_test/super-octo-train-michael_test/MP3/FINAL/mips.srcs/sources_1/imports/new/ALU.vhd
}
# Mark all dcp files as not used in implementation to prevent them from being
# stitched into the results of this synthesis run. Any black boxes in the
# design are intentionally left as such for best results. Dcp files will be
# stitched into the design at a later time, either when this synthesis run is
# opened, or when it is stitched into a dependent implementation run.
foreach dcp [get_files -quiet -all -filter file_type=="Design\ Checkpoint"] {
  set_property used_in_implementation false $dcp
}
read_xdc C:/Users/mgamlem19/Desktop/super-octo-train-michael_test/super-octo-train-michael_test/MP3/FINAL/mips.srcs/constrs_1/imports/Desktop/Nexys4DDR_Master.xdc
set_property used_in_implementation false [get_files C:/Users/mgamlem19/Desktop/super-octo-train-michael_test/super-octo-train-michael_test/MP3/FINAL/mips.srcs/constrs_1/imports/Desktop/Nexys4DDR_Master.xdc]

set_param ips.enableIPCacheLiteLoad 0
close [open __synthesis_is_running__ w]

synth_design -top computer_top -part xc7a100tcsg324-1


# disable binary constraint mode for synth run checkpoints
set_param constraints.enableBinaryConstraints false
write_checkpoint -force -noxdef computer_top.dcp
create_report "synth_1_synth_report_utilization_0" "report_utilization -file computer_top_utilization_synth.rpt -pb computer_top_utilization_synth.pb"
file delete __synthesis_is_running__
close [open __synthesis_is_complete__ w]
