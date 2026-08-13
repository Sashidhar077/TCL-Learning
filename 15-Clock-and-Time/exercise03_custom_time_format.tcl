if {0} {
Write a Tcl program that:

Gets the current Unix timestamp using clock seconds.
Uses clock format to display the date in a custom format.
Display the output
}

set current_time [clock seconds]
set date [clock format $current_time -format "%d-%m-%Y"]

set time [clock  format $current_time -format "%H-%M-%S"]

set day [clock format $current_time -format "%A"]
set month [clock format $current_time -format "%B"]
puts "Date : $date"
puts "Time : $time"
puts "Day  : $day"
puts "Month: $month"















