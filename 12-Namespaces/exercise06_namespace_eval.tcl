if {0} {
🎯 Question

Create a Tcl namespace called calculator.

Inside the namespace, use namespace eval to:

Create a variable called result with value 100.
Create a procedure called show_result.
The procedure should print the value of result.
From outside the namespace, call the procedure using its namespace name.
}

namespace eval calculator {
    variable result 100

    proc show_result {} {
        variable result

        puts "Result : $result"
    }
}

calculator::show_result
















