if {0} {
Create a Tcl program that:

Creates a file named student.txt
Writes the following information:
Student Report

Name  : Rahul
Roll  : 23ECE101
Branch: ECE
Marks : 92
Close the file.
Print a success message on the console.
}


puts "Writing Student Report...... \n"

set fp [open "student.txt" w]

puts $fp "Student Report \n"
puts $fp "Name      : Rahul"
puts $fp "Roll      : 23ECE101"
puts $fp "Branch    : ECE"
puts $fp "Marks     : 92"

close $fp

puts "Student Report Written Successfully \n"















