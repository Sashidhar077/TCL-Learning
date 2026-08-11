if {0} {
Use the Calculator package you created in Exercise 4.

Create a separate Tcl program that:

Adds the package directory to auto_path.
Loads the Calculator package using package require.
Uses Calculator::add to add 25 and 15.
Uses Calculator::multiply to multiply 5 and 6.
Prints the results.
} 

lappend auto_path [pwd]
package require Calculator 2.0

set sum [Calculator::add 25 15]
set product [Calculator::multiply 5 6]
puts "Addition          : $sum"
puts "Multiplication    : $product"
