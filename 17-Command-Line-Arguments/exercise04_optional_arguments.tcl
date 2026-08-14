if {0} {
Create a Tcl program that accepts:

Design Name

and optionally:

Frequency

If the frequency isn't supplied, use:

100 MHz
Test 1
tclsh exercise04_optional_arguments.tcl CPU_TOP 500

Expected:

Design Name: CPU_TOP
Frequency: 500 MHz
Test 2
tclsh exercise04_optional_arguments.tcl CPU_TOP

Expected:

Design Name: CPU_TOP
Frequency: 100 MHz
}

if {$argc < 1 || $argc > 2} {

    puts "Usage: tclsh exercise04_optional_arguments.tcl <design_name> ?frequency?"

    exit 1
}

set design_name [lindex $argv 0]
set frequency 500
if {$argc ==2} {
    set frequency [lindex $argv 1]
}

puts "Design name : $design_name"
puts "Frequency   : $frequency MHZ"














