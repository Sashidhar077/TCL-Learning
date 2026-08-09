if {0} {
Create a Tcl program that:

Opens a file named student.txt in write mode
Prints a message indicating the file was opened
Closes the file
Prints a confirmation message
}

puts "Opening file......\n"

set fp [open "student.txt" w]
puts "\n File opened successfully \n"

puts "Closing file \n"

close $fp

puts "File closed successfully"





if {0} {
    Question

Create a file named:
 
report.txt

Open it in write mode and immediately close it.


#program

set fp [open "report.txt" w]

close $fp
}











