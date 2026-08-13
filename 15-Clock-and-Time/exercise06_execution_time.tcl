if {0} {
Write a Tcl program that:

Records the start time using clock seconds.
Performs a simple operation.
Records the end time.
Calculates how many seconds the operation took.
Prints the execution time
}

set start_time [clock seconds]

puts "Starting operation..."

set sum 0

for {set i 1} {$i <= 1000000} {incr i} {
    set sum [expr {$sum + $i}]
}

puts "Operation completed."

set end_time [clock seconds]

set elapsed [expr {$end_time - $start_time}]

puts "Execution Time: $elapsed seconds"

















