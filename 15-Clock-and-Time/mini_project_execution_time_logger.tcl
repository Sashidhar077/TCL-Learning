if {0} {
Create a Tcl program that:

Records the start time.
Prints when the script starts.
Performs a simple operation.
Records the end time.
Calculates execution time.
Prints a small execution report.
}

set start_timestamp [clock seconds]

set start_time [clock format $start_timestamp \
    -format "%d-%m-%Y %H:%M:%S"]

puts "Script started at: $start_time"

set sum 0

for {set i 1} {$i <= 1000000} {incr i} {
    set sum [expr {$sum + $i}]
}


set end_timestamp [clock seconds]

set end_time [clock format $end_timestamp \
    -format "%d-%m-%Y %H:%M:%S"]


set execution_time [expr {$end_timestamp - $start_timestamp}]


puts ""
puts "================================="
puts "      EXECUTION TIME REPORT"
puts "================================="
puts "Start Time : $start_time"
puts "End Time   : $end_time"
puts "Execution  : $execution_time seconds"
puts "================================="




















