if {0} {
Create a TCL program that reads a text file and reports:

Filename
Number of lines
Number of words
Number of characters

For example, if student.txt contains:

This is Tcl,Tcl is useful
Accept one filename from the command line.
Check the argument.
Check whether the file exists.
Open the file.
Count lines.
Count words.
Count characters.
Close the file.
Print a formatted summary.
}

# Check argument

if {$argc != 1} {
    puts "Usage: tclsh exercise04_report_generation.tcl <file>"
    exit 1
}

set filename [lindex $argv 0]

if {![file exists $filename]} {
    puts "Error: File not found"
    exit 1
}

set fp [open $filename r]

set line_count 0
set word_count 0
set char_count 0

while {[gets $fp line] >= 0} {

    #line count
    incr line_count

    # Count words

    foreach word [split $line] {
        if {$word ne ""} {
            incr word_count
        }
    }

    # Count characters

    incr char_count [string length $line]
}

close $fp

puts "================================="
puts "       FILE SUMMARY"
puts "================================="
puts "File       : $filename"
puts "Lines      : $line_count"
puts "Words      : $word_count"
puts "Characters : $char_count"
puts "================================="































