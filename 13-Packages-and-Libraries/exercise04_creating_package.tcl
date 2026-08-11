if {0} {
Create a reusable Tcl package called Calculator with version 1.0.

The package should contain:

A namespace called Calculator.
A procedure add that accepts two numbers.
A procedure multiply that accepts two numbers.
package provide Calculator 1.0.
A pkgIndex.tcl entry so Tcl can find the package.
A separate application script that uses package require Calculator 1.0.
Print the results of addition and multiplication.
}


lappend auto_path [pwd]
package require Calculator 2.0

set sum [Calculator::add 10 10]
set product [Calculator::multiply 20 2]
puts "Addition          : $sum"
puts "Multiplication    : $product"







