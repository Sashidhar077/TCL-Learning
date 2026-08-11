if {0} {
Create a Tcl package called Logger with version 1.0.

Inside the package:

Create a namespace called Logger.
Create a procedure called info.
The procedure should accept a message and print it in this format:
INFO: Tcl script started
Declare the package using:
package provide Logger 1.0
Add the package to pkgIndex.tcl.
Create a separate script that uses package require Logger 1.0.
Call Logger::info
}


lappend auto_path [pwd]

package require Logger 1.0

Logger::info "Tcl script started"

