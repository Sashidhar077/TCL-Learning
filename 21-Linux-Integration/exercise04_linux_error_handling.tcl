if {0} {
Write a Tcl program that attempts to execute:

ls /directory_that_does_not_exist

Since this directory does not exist, the Linux command will fail.

Use Tcl's:

catch

to handle the error.

The program should display:

Command failed.

instead of terminating unexpectedly.
}


if {[catch {exec ls /directory_that_does_not_exist} result]} {

    puts "Command failed."
    puts "Error: $result"

} else {

    puts "Command completed successfully."
    puts $result
}






























