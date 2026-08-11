if {0} {
Question

Create a Tcl library called StringUtils that contains two procedures:

uppercase – converts a string to uppercase.
length – returns the length of a string.

The library should:

Use a StringUtils namespace.
Provide package StringUtils version 1.0.
Be registered in pkgIndex.tcl.
Be loaded from a separate Tcl script using package require.
Call both procedures
}


set package_dir [file dirname [file normalize [info script]]]

lappend auto_path $package_dir

package require StringUtils 1.0

set text "hello tcl"

puts "Uppercase: [StringUtils::uppercase $text]"
puts "Length: [StringUtils::length $text]"











