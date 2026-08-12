if {0} {
Create a calculator that asks the user for two numbers and performs addition.

The program should:

Ask for the first number.
Ask for the second number.
Validate both inputs.
Use catch to handle invalid input.
Display the sum if both inputs are valid.
Display an error message if the user enters invalid data.
}


puts -nonewline "Enter first number : "
flush stdout
gets stdin first

puts -nonewline "Enter second number : "
flush stdout
gets stdin second

if {[catch {
        set num1 [expr {double($first)}]
        set num2 [expr {double($second)}]

        expr {$num1 + $num2}
} result]} {
    puts "\n Error : Please enter a valid number \n"
} else {
    puts "\n Sum : $result \n"
}













