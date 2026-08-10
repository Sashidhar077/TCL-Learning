if {0} {
Create a Tcl namespace called calculator.

Inside the namespace, create three procedures:

add      : accepts two numbers and returns their sum.
subtract : accepts two numbers and returns their difference.
multiply : accepts two numbers and returns their product.

Then call all three procedures from outside the namespace and display the results.
}

namespace eval calculator {
    proc add {a b} {
        return [expr {$a + $b}]
    }

    proc subtract {a b} {
        return [expr {$a - $b}]
    }

    proc multiply {a b} {
        return [expr {$a * $b}]
    }

}

set sum [calculator::add 10 10]
set difference [calculator::subtract 5 1]
set product [calculator::multiply 2 4]

puts "Addition       : $sum"
puts "Subtraction    : $difference"
puts "Multiplication : $product"






