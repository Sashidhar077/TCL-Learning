if {0} {
Write a Tcl program that:

Uses catch to execute an operation that causes an error.
Store the error message in a variable.
Check whether an error occurred.
Print the error message if an error occurs.
Otherwise, print the result.

Use division by zero to generate the error
}




if {[catch {expr {10 / 0}} result]} {

    puts "Error: $result"

} else {

    puts "Result: $result"
}



















