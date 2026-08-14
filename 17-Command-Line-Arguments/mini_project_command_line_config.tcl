if {0} {
Create a Tcl script that accepts:

Design Name
Clock Frequency
Report Directory

Example:

tclsh mini_project_command_line_config.tcl CPU_TOP 500 ./reports
}


if {$argc != 3} {
    puts "Usage: tclsh mini_project_command_line_config.tcl <design_name> <frequency> <report_dir>"

    exit 1
}

set design_name [lindex $argv 0]
set frequency [lindex $argv 1]
set report_dir [lindex $argv 2]

puts "================================="
puts "     DESIGN CONFIGURATION"
puts "================================="
puts "Design Name : $design_name"
puts "Frequency   : $frequency MHz"
puts "Report Dir  : $report_dir"
puts "================================="







