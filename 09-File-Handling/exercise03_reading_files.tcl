if {0} {
Create a file named student.txt containing:

Student Report

Name   : Rahul
Roll   : 23ECE101
Branch : ECE
Marks  : 92

Write a Tcl program to:

Open the file
Read the first five lines
Display them on the console
Close the file
}

puts "Reading student report.....\n"

set fpr [open "student.txt" r]
gets $fpr line1
gets $fpr line2
gets $fpr line3
gets $fpr line4
gets $fpr line5
gets $fpr line6

puts $line1
puts $line2
puts $line3
puts $line4
puts $line5
puts $line6


close $fpr








































