if {0} {
Create a procedure called addNumbers.

Accept two numbers.

Return their sum.

Store the returned value in a variable and print it.
}

proc addNumbers {a b} {
    return [expr {$a + $b}]
} 

set num1 2
set num2 4

set sum [addNumbers $num1 $num2]
puts "Number 1 : $num1"
puts "Number 2 : $num2"
puts "Sum      : $sum"