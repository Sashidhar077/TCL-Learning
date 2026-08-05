if {0} {
Create a file named student.txt with:

Student Report

Name   : Rahul
Branch : ECE

Now write a Tcl program that appends:

Marks  : 92
Grade  : A

without deleting the existing content.
}

puts "Appending student information"

set fp [open "student.txt" a]

puts $fp "Grade     : A"
puts $fp "CGPA      : 9"

close $fp

puts "Information added successfully"
















