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
set_param tcl.collectionResultDisplayLimit 0
set_param chipscope.maxJobs 3
set_param xicom.use_bs_reader 1
create_project -in_memory -part xc7a35tcpg236-1

set_param project.singleFileAddWarning.threshold 0
set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_property webtalk.parent_dir F:/Learning/CPU/GitHub/cpu/cpu/cpu.cache/wt [current_project]
set_property parent.project_path F:/Learning/CPU/GitHub/cpu/cpu/cpu.xpr [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language Verilog [current_project]
set_property ip_output_repo f:/Learning/CPU/GitHub/cpu/cpu/cpu.cache/ip [current_project]
set_property ip_cache_permissions {read write} [current_project]
read_mem F:/Learning/CPU/GitHub/cpu/cpu/Instructuons.mem
read_verilog -library xil_defaultlib {
  F:/Learning/CPU/GitHub/cpu/cpu/cpu.srcs/sources_1/new/7_SegLED.v
  F:/Learning/CPU/GitHub/cpu/cpu/cpu.srcs/sources_1/new/ALU.v
  F:/Learning/CPU/GitHub/cpu/cpu/cpu.srcs/sources_1/new/Adder.v
  F:/Learning/CPU/GitHub/cpu/cpu/cpu.srcs/sources_1/new/CLU.v
  F:/Learning/CPU/GitHub/cpu/cpu/cpu.srcs/sources_1/new/CPU.v
  F:/Learning/CPU/GitHub/cpu/cpu/cpu.srcs/sources_1/new/Extend.v
  F:/Learning/CPU/GitHub/cpu/cpu/cpu.srcs/sources_1/new/IRAM.v
  F:/Learning/CPU/GitHub/cpu/cpu/cpu.srcs/sources_1/new/Jump.v
  F:/Learning/CPU/GitHub/cpu/cpu/cpu.srcs/sources_1/new/LeftShift_2.v
  F:/Learning/CPU/GitHub/cpu/cpu/cpu.srcs/sources_1/new/MUX_4_r.v
  F:/Learning/CPU/GitHub/cpu/cpu/cpu.srcs/sources_1/new/Mux_2.v
  F:/Learning/CPU/GitHub/cpu/cpu/cpu.srcs/sources_1/new/Mux_4.v
  F:/Learning/CPU/GitHub/cpu/cpu/cpu.srcs/sources_1/new/PC.v
  F:/Learning/CPU/GitHub/cpu/cpu/cpu.srcs/sources_1/new/RAM.v
  F:/Learning/CPU/GitHub/cpu/cpu/cpu.srcs/sources_1/new/Register.v
  F:/Learning/CPU/GitHub/cpu/cpu/cpu.srcs/sources_1/new/keyboard_clk.v
  F:/Learning/CPU/GitHub/cpu/cpu/cpu.srcs/sources_1/new/mux4_r2.v
  F:/Learning/CPU/GitHub/cpu/cpu/cpu.srcs/sources_1/new/timeDiv.v
  F:/Learning/CPU/GitHub/cpu/cpu/cpu.srcs/sources_1/new/basys3.v
}
# Mark all dcp files as not used in implementation to prevent them from being
# stitched into the results of this synthesis run. Any black boxes in the
# design are intentionally left as such for best results. Dcp files will be
# stitched into the design at a later time, either when this synthesis run is
# opened, or when it is stitched into a dependent implementation run.
foreach dcp [get_files -quiet -all -filter file_type=="Design\ Checkpoint"] {
  set_property used_in_implementation false $dcp
}
read_xdc F:/Learning/CPU/GitHub/cpu/cpu/cpu.srcs/constrs_1/new/001.xdc
set_property used_in_implementation false [get_files F:/Learning/CPU/GitHub/cpu/cpu/cpu.srcs/constrs_1/new/001.xdc]

set_param ips.enableIPCacheLiteLoad 1
close [open __synthesis_is_running__ w]

synth_design -top basys3 -part xc7a35tcpg236-1


# disable binary constraint mode for synth run checkpoints
set_param constraints.enableBinaryConstraints false
write_checkpoint -force -noxdef -incremental_synth basys3.dcp
create_report "synth_1_synth_report_utilization_0" "report_utilization -file basys3_utilization_synth.rpt -pb basys3_utilization_synth.pb"
file delete __synthesis_is_running__
close [open __synthesis_is_complete__ w]
