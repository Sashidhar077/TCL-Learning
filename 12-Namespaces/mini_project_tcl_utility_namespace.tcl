
# Simple Tcl Utility Namespace
# Module 12 Mini Project


namespace eval utils {

    # Greeting procedure

    proc greet {} {
        puts "Hello from Tcl Utility!"
    }

    # Addition procedure

    proc add {a b} {
        return [expr {$a + $b}]
    }

    # Square procedure

    proc square {number} {
        return [expr {$number * $number}]
    }
}


# Call greet procedure

utils::greet


# Call add procedure

set sum [utils::add 10 20]

puts "Addition: $sum"


# Call square procedure

set result [utils::square 5]

puts "Square: $result"