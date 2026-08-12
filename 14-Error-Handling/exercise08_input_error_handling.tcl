if {0} {
Create a Tcl program that asks the user to enter a number.

The program should:

Ask the user to enter a number.
Use catch to safely validate the input.
If the input is not a valid number, display an error.
If the input is valid, display the number.
Do not let the program crash because of invalid input
}

puts -nonewline "Enter a number : "
flush stdout

gets stdin input

if {[catch {expr {double($input)}} result]} {
    puts "Error : Please enter a valid number"
} else {
    puts "Valid number : $result"
}






