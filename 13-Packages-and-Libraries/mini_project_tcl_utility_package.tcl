if {0} {
Create a reusable package called StudentUtils with two procedures:

get_grade — returns a grade based on marks.
display_student — displays student information.
}

# Find package directory

set package_dir [file dirname [file normalize [info script]]]

lappend auto_path $package_dir

package require StudentUtils 1.0


StudentUtils::display_student "Rahul" 85