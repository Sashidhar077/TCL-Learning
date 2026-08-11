if {0} {
You already created a package called MyUtils in Exercise 1.

Now create a separate Tcl script that:

Loads the MyUtils package using package require.
Calls the MyUtils::greet procedure.
Prints the greeting.
}


lappend auto_path [pwd]

package require MyUtils 1.0

MyUtils::greet

















