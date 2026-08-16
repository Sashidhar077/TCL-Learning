if {0} {
Create a Tcl program that reads a log file and counts:

INFO
WARNING
ERROR

Create a file called:

flow.log

with:

INFO: Starting synthesis
INFO: Reading design
WARNING: Missing constraint
ERROR: Library not found
INFO: Synthesis completed
ERROR: Timing analysis failed
}

if {$argc !=1} {
    puts "Usage : tclsh exercise02_log_analysis.tcl <log_file>"
    exit 1
}

set filename [lindex $argv 0]
if {![file exists $filename]} {
    puts "Error : File not found : $filename"
    exit 1
}

set fp [open $filename r]

set info_count 0
set warning_count 0
set error_count 0

while {[gets $fp line] >=0} {
    if {[string match "INFO:*" $line]} {
        incr info_count
    }

    if {[string match "WARNING:*" $line]} {
        incr warning_count
    }

    if {[string match "ERROR:*" $line]} {
        incr error_count
    }
}

close $fp

puts "INFO messages    : $info_count"
puts "WARNING messages : $warning_count"
puts "ERROR messages   : $error_count"





























