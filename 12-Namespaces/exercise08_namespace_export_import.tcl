if {0} {
Create a namespace called math.

Inside the namespace:

Create two procedures:
add — returns the sum of two numbers.
multiply — returns the product of two numbers.
Export both procedures using namespace export.
Create another namespace called app.
Import the math procedures into app using namespace import.
Call add and multiply from inside the app namespace.
Print the results.
}

namespace eval math {
    proc add {a b} {
        return [expr {$a + $b}]
    }

    proc multiply {a b} {
        return [expr {$a * $b}]
    }
    namespace export add multiply
}

namespace eval app {
    namespace import ::math::add
    namespace import ::math::multiply


    set sum [add 10 10]
    set product [multiply 11 11]

    puts "Addition          : $sum"
    puts "Multiplicaiton    : $product"

}

































