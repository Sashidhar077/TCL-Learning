if {0} {
Create a simple Tcl package called MyUtils.

Your package should:

Create a namespace called MyUtils.
Create a procedure called greet inside the namespace.

The procedure should print:

Hello from MyUtils package!

Declare the package using:

package provide MyUtils 1.0
Call the greet procedure to verify that the package code works.
}


namespace eval MyUtils {

    proc greet {} {
        puts "Hello from MyUtils package!"
    }
}

package provide MyUtils 1.0

MyUtils::greet











