if {0} {
Given the following strings:

CPU
Path123
12345
clock

Write a Tcl program to check whether each string contains:

Uppercase letters
Lowercase letters
Digits

Display the results.
}



set items {
    CPU
    Path123
    12345
    Clock
}

foreach item $items {
    puts "INPUTS    : $item"
    if {[regexp {[0-9]} $item]} {
        puts "DIGIT FOUND"
    }
    if {[regexp {[a-z]} $item]} {
        puts "Lowercase Found"
    }

    if {[regexp {[A-Z]} $item]} {
        puts "Uppercase Found"
    }

    puts ""









}





















