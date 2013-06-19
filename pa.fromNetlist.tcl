
# PlanAhead Launch Script for Post-Synthesis floorplanning, created by Project Navigator

create_project -name MIPS -dir "F:/EHB/Courses/Computer architectuur/FPGA/MIPS/MIPS/planAhead_run_2" -part xc6slx45csg324-3
set_property design_mode GateLvl [get_property srcset [current_run -impl]]
set_property edif_top_file "F:/EHB/Courses/Computer architectuur/FPGA/MIPS/MIPS/MIPS_PROCESSOR.ngc" [ get_property srcset [ current_run ] ]
add_files -norecurse { {F:/EHB/Courses/Computer architectuur/FPGA/MIPS/MIPS} }
set_param project.paUcfFile  "MIPS_PROCESSOR.ucf"
add_files "MIPS_PROCESSOR.ucf" -fileset [get_property constrset [current_run]]
open_netlist_design
