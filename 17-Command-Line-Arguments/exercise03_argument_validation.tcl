if {0} {
Create a Tcl program that expects exactly two arguments:

tclsh exercise03_argument_validation.tcl CPU_TOP 500

If the user provides the correct number of arguments, display them.

If not, display:

Usage: tclsh exercise03_argument_validation.tcl <design_name> <frequency>
}


if {$argc != 2} {

    puts "Usage: tclsh exercise03_argument_validation.tcl <design_name> <frequency>"

    exit 1
}

set design_name [lindex $argv 0]
set frequency [lindex $argv 1]

puts "Design Name: $design_name"
puts "Frequency: $frequency MHz"