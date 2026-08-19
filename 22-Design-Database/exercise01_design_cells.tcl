if {0} {
Create a Tcl list containing:

U1
U2
U3
U4
U5

Then print each cell with its number
}

set cells {
    U1
    U2
    U3
    U4
    U5
}

set count 1
foreach cell $cells {
    puts "Cell $count : $cell"
    incr count
}














