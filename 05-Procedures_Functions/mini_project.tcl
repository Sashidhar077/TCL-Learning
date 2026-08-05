if {0} {
A hardware engineer wants a calculator that can perform multiple engineering calculations.

The calculator should support:

Addition
Subtraction
Multiplication
Division
Power (default exponent = 2)

Each calculation must be implemented as a separate procedure.
}

#==============procedure definitions==================
proc add {a b} {
    return [expr {$a + $b}]
}

proc subtract {a b} {
     return [expr {$a - $b}]
}

proc mul {a b} {
     return [expr {$a * $b}]
}

proc div {a b} {
    if {$b==0} {
         return "error : divison by zero"
    } else {
         return [expr {$a / double($b)}]
    }
}

proc exp {base {exponent 2}} {
    return [expr {$base ** $exponent}]
}

set num1 20
set num2 10

set sum [add $num1 $num2]
set sub [subtract $num1 $num2]
set multiply [mul $num1 $num2]
set division [div $num1 $num2]
set square [exp $num1]
set cube  [exp $num1 3]


puts "========Engineering calculations============"
puts ""
puts "Number 1 : $num1"
puts "Number 2 : $num2"
puts ""
puts "Addition       : $sum"
puts "Subtraction    : $sub"
puts "Multiplication : $multiply"
puts "Division       : $division"
puts "Square         : $square"
puts "Cube           : $cube"

















