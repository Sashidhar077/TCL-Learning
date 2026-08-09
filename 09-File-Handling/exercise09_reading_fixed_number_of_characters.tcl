#Tcl program for reading a fixed number of characters

set fp [open "student.txt" r]

set data [read $fp 7]

close $fp

puts $data 