if {0} {
Create a Tcl program that generates a simple execution report containing:

Current date.
Current time.
Unix timestamp.
A formatted report header.
A message indicating that the report was generated successfully.
}

set timestamp [clock seconds]
set date [clock format $timestamp -format "%d-%m-%Y"]
set time [clock format $timestamp -format "%H-%M-%S"]

puts "\n===========TCL TIME REPORT============\n"
puts "Date      : $date"
puts "Time      : $time"
puts "Timestamp : $timestamp"

puts "\n Report generated successfully \n"
puts "=============================================="








