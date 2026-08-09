if {0} {
Read student.txt until the end of the file and display every line.
}

set fp [open "student.txt" r]

while {![eof $fp]} {
    gets $fp line

    puts $line
}

close $fp


 











