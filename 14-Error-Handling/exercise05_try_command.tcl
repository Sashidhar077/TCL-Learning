if {0} {
Write a Tcl program that:

Uses the try command.
Performs a division by zero inside try.
Handles the error using on error.
Prints the error message instead of terminating the program.
}

try {
    set result [expr {10 / 0 }]
} on error {message options} {
    puts "Error : $message"
}











