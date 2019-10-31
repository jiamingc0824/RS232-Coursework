
# PlanAhead Launch Script for Post-Synthesis pin planning, created by Project Navigator

create_project -name RS232 -dir "C:/Users/Jia Ming/Desktop/RS232 Coursework/RS232/RS232/planAhead_run_2" -part xc3s500efg320-5
set_property design_mode GateLvl [get_property srcset [current_run -impl]]
set_property edif_top_file "C:/Users/Jia Ming/Desktop/RS232 Coursework/RS232/RS232/TopLevel.ngc" [ get_property srcset [ current_run ] ]
add_files -norecurse { {C:/Users/Jia Ming/Desktop/RS232 Coursework/RS232/RS232} }
set_param project.pinAheadLayout  yes
set_property target_constrs_file "TopLevel.ucf" [current_fileset -constrset]
add_files [list {TopLevel.ucf}] -fileset [get_property constrset [current_run]]
link_design
