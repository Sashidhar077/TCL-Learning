if {0} {
Write a Tcl program that:

Attempts to open student.txt
If successful:
Read and display its contents
If it fails:
Display the error message
Ensure the program does not crash
}
if {0} {
==================================================
Exercise 8
Error Handling using catch
==================================================

Problem Statement

Safely open and read a file.

If the file doesn't exist,
display an error instead of crashing.
}

puts "Opening File..."
puts ""


set status [catch {open "student.txt" r} fileHandle]

if {$status == 0} {

    puts "File Opened Successfully"
    puts ""

    while {[gets $fileHandle line] != -1} {

        puts $line

    }

    close $fileHandle

    puts ""
    puts "File Closed Successfully"

} else {

    puts "Error Opening File!"
    puts ""
    puts $fileHandle

}


















