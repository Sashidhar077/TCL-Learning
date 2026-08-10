if {0} {
Create a Tcl namespace called math.

Inside the namespace:

Create a procedure called add.
The procedure should accept two numbers.
Add the two numbers using expr.
Return the result.
Call the procedure from outside the namespace.
Print the result.
}

namespace eval math {
    proc add {a b} {
        return [expr {$a + $b}]
    }
}

set result [math::add 10 10]

puts "Sum : $result"

