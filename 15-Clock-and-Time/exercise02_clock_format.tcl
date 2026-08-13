if {0} {
Write a Tcl program that:

Gets the current Unix timestamp using clock seconds.
Converts it into a readable date and time using clock format.
Prints the current date and time.
}

set current_time [clock seconds]
set readable_time [clock format $current_time]

puts "Current data and time : $readable_time"
















