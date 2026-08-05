if {0} {
Create flow.log:

INFO : Start
INFO : Read Netlist
ERROR: Missing Library
INFO : Placement
ERROR: Clock Missing

Print only the lines containing "ERROR" and count them.
}

set errorcount 0

set fp [open "flow.log" r]

while {[gets $fp line] != -1} {
    if {[string match "ERROR*" $line]} {
        puts $line
        incr errorcount
    }
}

close $fp

puts "Total number of errors : $errorcount"






