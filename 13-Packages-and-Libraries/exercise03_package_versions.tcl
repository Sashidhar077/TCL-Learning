if {0} {
Create a Tcl package called MyUtils with version 1.0.

Then create a separate Tcl script that:

Adds the current directory to auto_path.
Requests MyUtils version 1.0 using package require.
Prints the version of the loaded package using package provide.
Calls the MyUtils::greet procedure
}



lappend auto_path [pwd]

package require MyUtils 1.0

puts "MyUtils Package Version : [package provide MyUtils]"

MyUtils::greet










