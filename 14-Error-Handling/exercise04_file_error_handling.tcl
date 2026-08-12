if {0} {
Write a Tcl program that:

Tries to open a file called missing.txt for reading.
Uses catch to handle the error if the file does not exist.
Prints a useful error message.
If the file opens successfully, closes the file.
}

if {[catch {open "missing.txt" r} fp]} {
    puts "Error : Unable to open file"
} else {
    puts "File opened successfully"
    close $fp
}

















