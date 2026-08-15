if {0} {
Exercise 3 — Command Arguments

Write a TCL program that:

Creates a variable called directory
Assigns /tmp to it
Uses exec to run ls -l /tmp
Prints the result
}

set directory "/tmp"
puts "Contents of $directory :  [exec ls -l $directory]"














