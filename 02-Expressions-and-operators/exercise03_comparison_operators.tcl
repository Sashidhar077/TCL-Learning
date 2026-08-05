if {0} {
    Question

Create two variables:

set num1 25
set num2 40

Perform the following comparisons and print the results:

Is num1 equal to num2?
Is num1 not equal to num2?
Is num1 greater than num2?
Is num1 less than num2?
Is num1 greater than or equal to num2?
Is num1 less than or equal to num2?
}

set num1 25
set num2 40

set e [expr {$num1 == $num2}]
set n [expr {$num1 != $num2}]
set g [expr {$num1 > $num2}]
set l [expr {$num1 < $num2}]
set ge [expr {$num1 >= $num2}]
set le [expr {$num1 <= $num2}]

puts "===================="
puts "Comparison Operators"
puts "===================="
puts ""
puts "Number 1 : $num1 "
puts "Number 2 : $num2"
puts ""
puts "num1 == num2 : $e"
puts "num1 != num2 : $n"
puts "num1 > num2 : $g"
puts "num1 < num2 : $l"
puts "num1 >= num2 : $ge"
puts "num1 <= num2 : $le"







