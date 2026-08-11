
lappend auto_path [pwd]
package require Calculator 2.0

set sum [Calculator::add 25 15]
set product [Calculator::multiply 5 6]
puts "Addition          : $sum"
puts "Multiplication    : $product"
