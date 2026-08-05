if {0} {
reate power.rpt:

Cell1  10mW
Cell2  15mW
Cell3  8mW
Cell4  20mW

Read the file and count the total number of cells.

Solution
}
set count 0

set fp [open "power.rpt" r]

while {[gets $fp line] != -1} {

    incr count
    puts $line
}

close $fp

puts "Total cells : $count"
















