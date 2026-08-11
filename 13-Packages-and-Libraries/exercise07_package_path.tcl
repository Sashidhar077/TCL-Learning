if {0} {
Create a simple package called Greeting and load it from another Tcl script using Tcl's package search path.

Your task:

Create Greeting.tcl.
Create a namespace called Greeting.
Create a procedure hello.
Provide the package as version 1.0.
Create a separate application script.
Add the package directory to auto_path.
Use package require Greeting 1.0.
Call Greeting::hello.
Expected Output
Hello from Greeting package
}

set package_dir [file dirname [info script]]

lappend auto_path $package_dir

package require greet 1.0

greet::hello


















