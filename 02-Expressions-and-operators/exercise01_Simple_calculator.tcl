if {0} {
    Question

Create two variables:
 
num1 = 25
num2 = 10

Calculate and display:
 
Addition
Subtraction
Multiplication
Division
Remainder (Modulo)
}

set num1 2
set num2 2
puts "num1 = $num1"
puts "num2 = $num2"
puts ""

set Addition [expr {$num1+$num2}]
set Subtraction [expr {$num1-$num2}]
set Multiplication [expr {$num1*$num2}]
set Division [expr {$num1/$num2}]
set Remainder [expr {$num1%$num2}]
puts "============================" 
puts "Simple calculator"
puts "============================" 
puts ""
puts "Addition       : $Addition"
puts "Subtraction    : $Subtraction"
puts "Multiplication : $Multiplication"
puts "Division       : $Division"
puts "Remainder      : $Remainder"
