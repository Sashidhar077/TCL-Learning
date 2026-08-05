if {0} {
Create student.txt containing:

Student Report

Name   : Rahul
Roll   : 23ECE101
Branch : ECE
Marks  : 92

Write a Tcl program that:

Opens the file
Reads the entire file
Stores it in a variable
Displays it
Closes the file
}


puts "Reading Entire File..."
puts ""

set fp [open "student.txt" r]

set data [read $fp]

close $fp

puts "File Contents\n"

puts $data































