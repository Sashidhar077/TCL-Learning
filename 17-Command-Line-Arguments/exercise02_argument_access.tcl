if {0} {
Create a Tcl program that accepts:

tclsh exercise02_argument_access.tcl CPU_TOP 500

where:

Argument 1 → Design Name
Argument 2 → Clock Frequency
}

set design_name [lindex $argv 0]
set Frequency [lindex $argv 1]
puts "Design name : $design_name"
puts "Clock Frequency : $Frequency"




