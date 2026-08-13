if {0} {
Write a Tcl program that:

Creates a starting timestamp.
Creates an ending timestamp.
Calculates the difference between them.
Prints the elapsed time in seconds.

Use these two times:

Start: 10:00:00
End:   10:05:30
}

set start_time [clock scan "13 August 2026 10:00:00"]


set end_time [clock scan "13 August 2026 10:05:30"]


set elapsed_time [expr {$end_time - $start_time}]


puts "Start Time: [clock format $start_time -format "%H:%M:%S"]"
puts "End Time: [clock format $end_time -format "%H:%M:%S"]"

puts "Elapsed Time: $elapsed_time seconds"















