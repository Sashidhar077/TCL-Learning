if {0} {
    Exercise 1 – Print Numbers 1 to 10
Problem Statement

Write a Tcl program to print numbers from 1 to 10 using a while loop.
}

set i 1
puts "Numbers from 1 to 10 "
puts ""
while {$i<=10} {
    puts $i
    set i [expr $i+1] 
}
